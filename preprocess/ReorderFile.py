import os
import glob
import time
import random

import numpy as np
import pandas

import pdb


infiles = ["deeph-train-v1.h5", "deeph-test-v1.h5", "deeph-val-v1.h5"]


for infname in infiles:

    store = pandas.HDFStore(infname)

    entries =  store.get_storer("table").nrows

    batch_size = 50

    all_batches =  range(entries / batch_size)

    random.shuffle(all_batches)

    print all_batches

    for i_batch, batch in enumerate(all_batches):

        df = store.select("table", 
                          start = batch * batch_size, 
                          stop = (batch+1) * batch_size
                          )

        df["class_new"] = df["class"] - 1

        df.to_hdf(infname.replace(".h5","-resort.h5"),
                  'table',
                  append=True, 
                  complib = "blosc", complevel=5)

        print infname, i_batch, len(all_batches)
