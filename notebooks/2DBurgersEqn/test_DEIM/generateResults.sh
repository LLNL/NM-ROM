#!/bin/bash
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -J generateResults
#SBATCH -t 24:00:00
#SBATCH -p pbatch
#SBATCH -o sbatch.log
#SBATCH --open-mode truncate
#BSUB -N 1
#BSUB -x
#BSUB -J generateResults
#BSUB -W 24:00:00
#BSUB -oe sbatch.log

rm -rf checkpoint*
source ../../../nm-rom/bin/activate
jupyter nbconvert --to script *.ipynb
sed -i '/ipython/d' ./*.py
sed -i '/plt.show()/d' ./*.py
srun python build_data_high_Re.py
srun python train_LS-ROM_high_Re.py
srun python train_NM-ROM_high_Re_v3_batch_240.py
