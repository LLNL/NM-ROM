#!/bin/bash

srun runipy build_data_v2.ipynb
srun runipy train_LS-ROM_v2_red-dim_2.ipynb
srun runipy train_LS-ROM_v2_red-dim_5.ipynb
srun runipy train_LS-ROM_v2_red-dim_10.ipynb
srun runipy train_LS-ROM_v2_red-dim_15.ipynb
srun runipy train_LS-ROM_v2_red-dim_20.ipynb
srun runipy train_LS-ROM_v2_red-dim_25.ipynb
srun runipy train_LS-ROM_v2_red-dim_30.ipynb
srun runipy train_LS-ROM_v2_red-dim_35.ipynb
srun runipy train_LS-ROM_v2_red-dim_40.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_2.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_5.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_10.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_15.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_20.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_25.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_30.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_35.ipynb
srun runipy train_NM-ROM_v2_swish_red-dim_40.ipynb
