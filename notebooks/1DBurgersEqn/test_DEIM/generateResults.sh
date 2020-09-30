#!/bin/bash

srun runipy build_data_v2.ipynb
srun runipy train_LS-ROM_v2.ipynb
srun runipy train_NM-ROM_v2_swish.ipynb
