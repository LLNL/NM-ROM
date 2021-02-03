#!/bin/bash
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -J generateResults
#SBATCH -t 24:00:00
#SBATCH -p pbatch
#SBATCH -o sbatch.log
#SBATCH --open-mode truncate

rm -rf checkpoint*
srun runipy build_data_v2.ipynb
srun runipy train_LS-ROM_v2.ipynb
srun runipy train_NM-ROM_v2_swish.ipynb
