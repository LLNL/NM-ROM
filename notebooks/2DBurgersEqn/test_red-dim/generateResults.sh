#!/bin/bash

srun runipy build_data_high_Re.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_3.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_5.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_10.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_15.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_20.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_25.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_30.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_35.ipynb
srun runipy train_LS-ROM_high_Re_red-dim_40.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_3.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_5.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_10.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_15.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_20.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_25.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_30.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_35.ipynb
srun runipy train_NM-ROM_high_Re_v3_red-dim_40.ipynb
