#!/bin/bash
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -J generateResults
#SBATCH -t 24:00:00
#SBATCH -p pbatch
#SBATCH -o sbatch.log
#SBATCH --open-mode truncate
#SBATCH -M rzhasgpu

rm -rf checkpoint*
srun runipy build_data_v2_nparam.ipynb
srun runipy train_LS-ROM_v2_nparam_2.ipynb
srun runipy train_LS-ROM_v2_nparam_4.ipynb
srun runipy train_LS-ROM_v2_nparam_6.ipynb
srun runipy train_LS-ROM_v2_nparam_8.ipynb
srun runipy train_LS-ROM_v2_nparam_10.ipynb
srun runipy train_NM-ROM_v2_swish_nparam_2.ipynb
srun runipy train_NM-ROM_v2_swish_nparam_4.ipynb
srun runipy train_NM-ROM_v2_swish_nparam_6.ipynb
srun runipy train_NM-ROM_v2_swish_nparam_8.ipynb
srun runipy train_NM-ROM_v2_swish_nparam_10.ipynb
