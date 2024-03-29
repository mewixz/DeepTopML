def main(kwargs):

    print(kwargs)

    import TrainClassifiersBase as TCB

    ########################################
    # Configuration
    ########################################

    default_params = {        

        "model_name" : "NONE",
        
        "suffix" : "",

        # IO
        "input_path"  : "/scratch/snx3000/gregork/",
        "name_train"  : "topconst-train-v3-resort.h5",
        "name_test"   : "topconst-test-v3-resort.h5",
        "name_val"    : "topconst-val-v3-resort.h5",
        "output_path" : "/scratch/snx3000/gregork/outputs/", 

        # False: Train; True: read weights file 
        "read_from_file" : False,        
        "inputs" : "constit_lola",
        "boost": False,
        "n_classes" : 2,
        "signal_branch" : "is_signal_new",

        # Provide additional training weights
        "reweight_events" : False,
        

        # Parameters for constituent approach
        "n_constit"  : 40,
        "n_features" : 4,


        # Parameters for 2d convolutional architecture    
        "n_blocks"        : 1,    
        "n_conv_layers"   : 2,        
        "conv_nfeat"      : 32,
        "conv_size"       : 3,
        "conv_batchnorm"  : 0,
        "pool_size"       : 0,
        "n_dense_layers"  : 3,
        "n_dense_nodes"   : 800,
        "dense_batchnorm" : 0,

        "conv_dropout"    : 0.0,
        "block_dropout"   : 0.0,
        "dense_dropout"   : 0.0,

        "pool_type"       : "max",

        # Parameters for LorentzLayer
        "train_poly"                     : False,
        "train_offset"                   : "full",
        "train_metric"                   : True,
        "train_minmax"                   : True,
        "lola_filters"                   : 1,
        "use_angular_dr"                 : True,
        "n_lolas"                        : 1,
        "do_mult_p"                      : 0,
        "mult_p"                         : 0,
        "regularize_weight"              : False,
        "train_regularize_weight"        : False,
        "train_regularize_weight_target" : False,
        "take_diff"                      : True, 

        "early_stop_patience"            : 5, 

        # Image pre-processing
        "cutoff"          : 0.0,
        "scale"           : 1.0,
        "rnd_scale"       : 0.0,
        "sum2"            : 0,

        # Common parameters
        "batch_size"        : 1024,
        "lr"                : 0.02,
        "decay"             : 0.,
        "momentum"          : 0.,            
        "nb_epoch"          : 100,
        "samples_per_epoch" : None, # later filled from input files
    }


    name = "w_"
    for k,v in kwargs.items():
        name += "{0}_{1}_".format(k,v)
    default_params["model_name"]=name        
        
    colors = ['black', 'red','blue','green','orange','green','magenta']

    ########################################
    # Read in parameters
    ########################################

    params = {}
    for param in default_params.keys():

        if param in kwargs.keys():
            cls = default_params[param].__class__
            value = cls(kwargs[param])
            params[param] = value
        else:
            params[param] = default_params[param]

    print("Parameters are:")
    for k,v in params.items():
        print("{0}={1}".format(k,v))

    tot_pool = params["pool_size"]**params["n_blocks"]
 
    if tot_pool > 0:
        if not ((40 % tot_pool == 0) and (tot_pool <= 40)):
            print("Total pool of {0} is too large. Exiting.".format(tot_pool))
            return 10.

    brs = [params["signal_branch"]]

    pixel_brs = []

    if params["n_features"] == 4:
        feat_list =  ["E","PX","PY","PZ"] 
    elif params["n_features"] == 5:
        feat_list =  ["E","PX","PY","PZ","C"] 
    elif params["n_features"] == 8:
        feat_list =  ["E","PX","PY","PZ","C", "VX", "VY", "VZ"] 

    if params["inputs"] == "2d" or params["inputs"] == "caps":
        pixel_brs += ["img_{0}".format(i) for i in range(40*40)]
    elif params["inputs"] == "constit_fcn":
        pixel_brs += ["{0}_{1}".format(feature,constit) for feature in feat_list for constit in range(params["n_constit"])]
    elif params["inputs"] == "constit_lola":
        pixel_brs += ["{0}_{1}".format(feature,constit) for feature in feat_list for constit in range(params["n_constit"])]

    # Reading H5FS
    infname_train = TCB.os.path.join(params["input_path"], params["name_train"])
    infname_test  = TCB.os.path.join(params["input_path"], params["name_test"])
    infname_val   = TCB.os.path.join(params["input_path"], params["name_val"])


    ########################################
    # H5FS: Count effective training samples
    ########################################

    store_train = TCB.pandas.HDFStore(infname_train)
    n_train_samples = int((store_train.get_storer('table').nrows/params["batch_size"]))*params["batch_size"]

    store_test = TCB.pandas.HDFStore(infname_test)
    n_test_samples = int((store_test.get_storer('table').nrows/params["batch_size"]))*params["batch_size"]

    store_val = TCB.pandas.HDFStore(infname_val)
    n_val_samples = int((store_val.get_storer('table').nrows/params["batch_size"]))*params["batch_size"]

    print("Total number of training samples = ", n_train_samples)
    print("Total number of testing samples = ", n_test_samples)
    print("Total number of valing samples = ", n_val_samples)
    params["samples_per_epoch"] = n_train_samples
    params["samples_per_epoch_test"] = n_test_samples
    params["samples_per_epoch_val"] = n_val_samples


    ########################################
    # Prepare data and scalers
    ########################################

    print(n_train_samples)

    datagen_train_pixel = TCB.datagen_batch_h5(brs+pixel_brs, store_train, batch_size=params["batch_size"])
    datagen_test_pixel  = TCB.datagen_batch_h5(brs+pixel_brs, store_test, batch_size=params["batch_size"])
    datagen_val_pixel  = TCB.datagen_batch_h5(brs+pixel_brs, store_val, batch_size=params["batch_size"])

    if params["inputs"] == "2d":
        the_model     = TCB.Models.model_shih
        the_image_fun = TCB.Models.to_image_2d
    elif params["inputs"] == "constit_fcn":
        the_model     = TCB.Models.model_fcn
        if params["boost"]:
            the_image_fun = lambda x: TCB.Models.to_constit_boost(x,params["n_constit"], params["n_features"])
        else:
            the_image_fun = lambda x: TCB.Models.to_constit(x,params["n_constit"], params["n_features"])
    elif params["inputs"] == "constit_lola":
        the_model     = TCB.Models.model_lola
        if params["boost"]:
            the_image_fun = lambda x: TCB.Models.to_constit_boost(x,params["n_constit"], params["n_features"])
        else:
            the_image_fun = lambda x: TCB.Models.to_constit(x,params["n_constit"], params["n_features"])
    
    class_names = {}
    for i in range(params["n_classes"]):
        class_names[i] = "c{0}".format(i)

    classifiers = [
        TCB.Classifier(params["model_name"],
                   "keras",
                   params,
                   params["read_from_file"],
                   datagen_train_pixel,                   
                   datagen_test_pixel,               
                   datagen_val_pixel,               
                   the_model(params),
                   image_fun = the_image_fun,           
                   class_names = class_names,
                   inpath = "Lola_Poly2/",
               )
    ]

    ########################################
    # Train/Load classifiers and make ROCs
    ########################################

    # Returns best val loss for keras training
    for clf in classifiers:
        clf.prepare()
                
        if params["suffix"]:
            ret = TCB.eval_single(clf, params["suffix"])
        else:
            ret = TCB.eval_single(clf)

        #return ret
        
    store_train.close()
    store_val.close()
    store_test.close()
    
    return ret
    

