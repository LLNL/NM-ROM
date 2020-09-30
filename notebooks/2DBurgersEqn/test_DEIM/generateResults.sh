#!/bin/bash

srun runipy build_data_high_Re.ipynb
srun runipy train_LS-ROM_high_Re.ipynb
srun runipy train_NM-ROM_high_Re_v3_batch_240.ipynb
