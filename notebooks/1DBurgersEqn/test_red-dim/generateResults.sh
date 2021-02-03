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
srun python build_data_v2.py
srun python train_LS-ROM_v2_red-dim_2.py
srun python train_LS-ROM_v2_red-dim_5.py
srun python train_LS-ROM_v2_red-dim_10.py
srun python train_LS-ROM_v2_red-dim_15.py
srun python train_LS-ROM_v2_red-dim_20.py
srun python train_LS-ROM_v2_red-dim_25.py
srun python train_LS-ROM_v2_red-dim_30.py
srun python train_LS-ROM_v2_red-dim_35.py
srun python train_LS-ROM_v2_red-dim_40.py
srun python train_NM-ROM_v2_swish_red-dim_2.py
srun python train_NM-ROM_v2_swish_red-dim_5.py
srun python train_NM-ROM_v2_swish_red-dim_10.py
srun python train_NM-ROM_v2_swish_red-dim_15.py
srun python train_NM-ROM_v2_swish_red-dim_20.py
srun python train_NM-ROM_v2_swish_red-dim_25.py
srun python train_NM-ROM_v2_swish_red-dim_30.py
srun python train_NM-ROM_v2_swish_red-dim_35.py
srun python train_NM-ROM_v2_swish_red-dim_40.py
