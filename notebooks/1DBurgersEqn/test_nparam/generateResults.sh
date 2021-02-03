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
jupyter nbconvert --to script *.py
sed -i '/ipython/d' ./*.py
sed -i '/plt.show()/d' ./*.py
srun python build_data_v2_nparam.py
srun python train_LS-ROM_v2_nparam_2.py
srun python train_LS-ROM_v2_nparam_4.py
srun python train_LS-ROM_v2_nparam_6.py
srun python train_LS-ROM_v2_nparam_8.py
srun python train_LS-ROM_v2_nparam_10.py
srun python train_NM-ROM_v2_swish_nparam_2.py
srun python train_NM-ROM_v2_swish_nparam_4.py
srun python train_NM-ROM_v2_swish_nparam_6.py
srun python train_NM-ROM_v2_swish_nparam_8.py
srun python train_NM-ROM_v2_swish_nparam_10.py
