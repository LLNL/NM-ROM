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
srun runipy build_data_high_Re.ipynb
srun runipy train_LS-ROM_high_Re.ipynb
srun runipy train_NM-ROM_high_Re_v3_batch_240.ipynb
