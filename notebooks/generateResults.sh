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

path=$PWD

cd $path/1DBurgersEqn
./generateResults.sh

cd $path/2DBurgersEqn
./generateResults.sh
