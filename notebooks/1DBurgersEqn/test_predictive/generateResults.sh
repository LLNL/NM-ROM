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
cp ../test_DEIM/data/* data/.
cp ../test_DEIM/model/* model/.
srun runipy build_data_v2_prediction.ipynb
