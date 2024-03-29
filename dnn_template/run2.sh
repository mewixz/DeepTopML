#lr=0.0005 decay=0.00000125  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p0005_decay_400 &
#sleep 10
#lr=0.0005 decay=0.0000025  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p0005_decay_200 &
#sleep 10
#lr=0.0005 decay=0.000005  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p0005_decay_100 &
#sleep 10
#lr=0.0005 decay=0.00001  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p0005_decay_50 &
#sleep 10
#lr=0.001 decay=0.0000025  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p001_decay_400 &
#sleep 10
#lr=0.001 decay=0.000005  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p001_decay_200 &
#sleep 10
#lr=0.001 decay=0.00001  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p001_decay_100 &
#sleep 10
#lr=0.001 decay=0.00002  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p001_decay_50 &
#sleep 10
#lr=0.002 decay=0.000005  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p002_decay_400 &
#sleep 10
#lr=0.002 decay=0.00001  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p002_decay_200 &
#sleep 10
#lr=0.002 decay=0.00002  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p002_decay_100 &
#sleep 10
#lr=0.002 decay=0.00004  srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh lr_0p002_decay_50 &

#srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh                      v16	    &
#sleep 10 
#momentum=0.5 srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh                      v16_mom5	    &
#sleep 10 
#lr=0.02 srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh                      v16_lr0p02	    &
#sleep 10 
#lr=0.02 momentum=0.5 srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh                      v16_mom5_lr0p02	    &
#sleep 10 
#lr=0.005 srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh                      v16_lr0p005	    &
#sleep 10 
#lr=0.005 momentum=0.5 srun --time=1200   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh                      v16_mom5_lr0p005	    &
#sleep 10 



#srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v22_vanilla	    &
#sleep 10 
#n_blocks=1        srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v22_n_blocks_1	    &
#sleep 10 
#n_blocks=3	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_n_blocks_3	    &
#sleep 10 
#n_conv_layers=3	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_n_conv_layers_3	    &
#sleep 10 
#conv_nfeat=6	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_conv_nfeat_6	    &
#sleep 10 
#conv_nfeat=10	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_conv_nfeat_10	    &
#sleep 10 
#conv_size=2	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_conv_size_2	    &
#sleep 10 
#conv_size=6	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_conv_size_6	    &
#sleep 10 
#pool_size=0	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_pool_size_0	    &
#sleep 10 
#n_dense_layers=2  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_n_dense_layers_2    &
#sleep 10 
#n_dense_layers=4  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_n_dense_layers_4    &
#sleep 10 
#n_dense_nodes=32  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v22_n_dense_nodes_32    &
#sleep 10 
#n_dense_nodes=128 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v22_n_dense_nodes_128   &
#sleep 10 



#srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_vanilla  &
#sleep 10 
#cutoff=0.01 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_0p01  &
#sleep 10 
#cutoff=0.1 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_0p1  &
#sleep 10 
#cutoff=0.5 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_0p5  &
#sleep 10 
#cutoff=1. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_1  &
#sleep 10 
#cutoff=2. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_2  &
#sleep 10 
#cutoff=3. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_3  &
#sleep 10 
#cutoff=5. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_5  &
#sleep 10 
#cutoff=10. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_10  &
#sleep 10 
#cutoff=15. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_15  &
#sleep 10 
#cutoff=20. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_20  &
#sleep 10 
#cutoff=30. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_30  &
#sleep 10 
#cutoff=50. srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v20_cutoff_50  &
#sleep 10 

 
#srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v21_vanilla  &
#sleep 10 
#lr=0.01 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v21_lr0p01  &
#sleep 10 
#lr=0.001 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v21_lr0p001  &



#
#srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v23_vanilla	    &
#sleep 10 
#momentum=0.9 srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v23_mom_09	    &
#sleep 10 
#n_blocks=1        srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v23_n_blocks_1	    &
#sleep 10 
#n_blocks=3	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_blocks_3	    &
#sleep 10 
#n_blocks=4	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_blocks_4	    &
#sleep 10 
#n_blocks=5	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_blocks_5	    &
#sleep 10 
#n_conv_layers=3	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_conv_layers_3	    &
#sleep 10 
#n_conv_layers=4	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_conv_layers_4	    &
#sleep 10 
#n_conv_layers=5	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_conv_layers_5	    &
#sleep 10 
#conv_nfeat=6	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_conv_nfeat_6	    &
#sleep 10 
#conv_nfeat=10	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_conv_nfeat_10	    &
#sleep 10 
#conv_size=2	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_conv_size_2	    &
#sleep 10 
#conv_size=6	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_conv_size_6	    &
#sleep 10 
#conv_size=8	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_conv_size_8	    &
#sleep 10 
#conv_size=10	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_conv_size_10	    &
#sleep 10 
#pool_size=0	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_pool_size_0	    &
#sleep 10 
#n_dense_layers=2  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_dense_layers_2    &
#sleep 10 
#n_dense_layers=4  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_dense_layers_4    &
#sleep 10 
#n_dense_nodes=32  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v23_n_dense_nodes_32    &
#sleep 10 
#n_dense_nodes=128 srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v23_n_dense_nodes_128   &
#sleep 10 

#srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v26_vanilla	    &
#sleep 10 
#n_blocks=1        srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v26_n_blocks_1	    &
#sleep 10 
#n_blocks=3	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_blocks_3	    &
#sleep 10 
#n_conv_layers=2	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_conv_layers_2	    &
#sleep 10 
#n_conv_layers=4	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_conv_layers_4	    &
#sleep 10 
#n_conv_layers=5	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_conv_layers_5	    &
#sleep 10 
#conv_nfeat=6	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_conv_nfeat_6	    &
#sleep 10 
#conv_nfeat=10	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_conv_nfeat_10	    &
#sleep 10 
#conv_nfeat=12	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_conv_nfeat_12	    &
#sleep 10 
#conv_size=2	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_conv_size_2	    &
#sleep 10 
#conv_size=6	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_conv_size_6	    &
#sleep 10 
#pool_size=0	  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_pool_size_0	    &
#sleep 10 
#n_dense_layers=3  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_dense_layers_3    &
#sleep 10 
#n_dense_layers=5  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_dense_layers_5    &
#sleep 10 
#n_dense_nodes=32  srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v26_n_dense_nodes_32    &
#sleep 10 
#n_dense_nodes=128 srun --time=10   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v26_n_dense_nodes_128   &
#sleep 10 


#srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_vanilla	    &
#sleep 10 
#n_conv_layers=4 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_layers4	    &
#sleep 10 
#conv_nfeat=12 n_conv_layers=4 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_feat12_layers4	    &
#sleep 10 
#n_conv_layers=2 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_layers2	    &
#sleep 10 
#n_conv_layers=2 conv_nfeat=12 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_feat12_layers2	    &
#sleep 10 
#pool_size=0 n_conv_layers=4 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_layers4_pool0	    &
#sleep 10 
#pool_size=0 conv_nfeat=12 n_conv_layers=4 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_feat12_layers4_pool0	    &
#sleep 10 
#pool_size=0 n_conv_layers=2 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_layers2_pool0	    &
#sleep 10 
#pool_size=0 n_conv_layers=2 conv_nfeat=12 srun --time=1100   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v27_feat12_layers2_pool0    &
#sleep 10 

#srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla  &
#sleep 10 
#cutoff=0.01 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_0p01  &
#sleep 10 
#cutoff=0.1 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_0p1  &
#sleep 10 
#cutoff=0.5 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_0p5  &
#sleep 10 
#cutoff=1. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_1  &
#sleep 10 
#cutoff=2. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_2  &
#sleep 10 
#cutoff=3. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_3  &
#sleep 10 
#cutoff=5. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_5  &
#sleep 10 
#cutoff=10. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_10  &
#sleep 10 
#cutoff=15. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_15  &
#sleep 10 
#cutoff=20. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_20  &
#sleep 10 
#cutoff=30. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_30  &
#sleep 10 
#cutoff=50. srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_cutoff_50  &
#sleep 10 


#srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v29_vanilla	    &
#sleep 10 
#n_conv_layers=1	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v29_n_conv_layers_1	    &
#sleep 10 
#pool_size=0	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v29_pool_size_0	    &
#sleep 10 
#pool_size=4	  srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v29_pool_size_4	    &
#sleep 10 

#srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v30_vanilla	    &
#sleep 10 
#rnd_scale=0.01 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v30_rnd_0p01	    &
#sleep 10 
#rnd_scale=0.02 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v30_rnd_0p02	    &
#sleep 10 
#rnd_scale=0.05 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v30_rnd_0p05	    &
#sleep 10 
#rnd_scale=0.1 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh     v30_rnd_0p1	    &
#sleep 10 
#


#srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v31_vanilla	    &
#sleep 10 
#n_conv_layers=2 n_dense_layers=3 srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v31_n_dense_layers_3_n_conv_layers_2	    &
#sleep 10 
#n_blocks=1        srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v31_n_blocks_1	    &
#sleep 10 
#n_blocks=3	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_n_blocks_3	    &
#sleep 10 
#n_conv_layers=2	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_n_conv_layers_2	    &
#sleep 10 
#n_conv_layers=4	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_n_conv_layers_4	    &
#sleep 10 
#conv_nfeat=6	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_conv_nfeat_6	    &
#sleep 10 
#conv_nfeat=10	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_conv_nfeat_10	    &
#sleep 10 
#conv_size=2	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_conv_size_2	    &
#sleep 10 
#conv_size=6	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_conv_size_6	    &
#sleep 10 
#pool_size=0	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_pool_size_0	    &
#sleep 10 
#pool_size=4	  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_pool_size_4	    &
#sleep 10 
#n_dense_layers=3  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_n_dense_layers_3    &
#sleep 10 
#n_dense_layers=5  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_n_dense_layers_5    &
#sleep 10 
#n_dense_nodes=32  srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh 	v31_n_dense_nodes_32    &
#sleep 10 
#n_dense_nodes=128 srun --time=20   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v31_n_dense_nodes_128   &
#sleep 10 



srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v36_vanilla	    &
sleep 10 
lr=0.01 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v36_lr0p01	    &
sleep 10 
lr=0.001 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v36_lr0p001	    &
sleep 10 
sum2=1 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v36_sum2_vanilla	    &
sleep 10 
sum2=1 lr=0.01 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v36_sum2_lr0p01	    &
sleep 10 
sum2=1 lr=0.001 srun --time=1400   --nodes=1 --gres=gpu:1 -C gpu  --partition=normal  run_daint.sh    v36_sum2_lr0p001	    &
sleep 10 


#scale=0.75 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.775 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.8 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.825 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.85 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.875 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.9 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.925 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.95 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=0.975 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.0 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.025 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.05 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.075 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.1 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.125 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.15 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.175 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.2 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.225 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
#scale=1.25 srun --time=40   --nodes=1 --gres=gpu:1 -C gpu  --partition=high  run_daint.sh    v28_vanilla	    &
#sleep 10 
