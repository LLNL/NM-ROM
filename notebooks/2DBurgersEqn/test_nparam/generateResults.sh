#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -J generateResults
#SBATCH -t 24:00:00
#SBATCH -p pbatch
#SBATCH -o sbatch.log
#SBATCH --open-mode truncate
#SBATCH -M rzhasgpu

#!/bin/bash

srun runipy build_data_high_Re_nparam.ipynb
srun runipy train_LS-ROM_high_Re_nparam_2.ipynb
srun runipy train_LS-ROM_high_Re_nparam_4.ipynb
srun runipy train_LS-ROM_high_Re_nparam_6.ipynb
srun runipy train_LS-ROM_high_Re_nparam_8.ipynb
srun runipy train_LS-ROM_high_Re_nparam_10.ipynb
srun runipy train_NM-ROM_high_Re_v3_nparam_2.ipynb
srun runipy train_NM-ROM_high_Re_v3_nparam_4.ipynb
srun runipy train_NM-ROM_high_Re_v3_nparam_6.ipynb
srun runipy train_NM-ROM_high_Re_v3_nparam_8.ipynb
srun runipy train_NM-ROM_high_Re_v3_nparam_10.ipynb
