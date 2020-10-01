#!/bin/bash
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -J generateResults
#SBATCH -t 24:00:00
#SBATCH -p pbatch
#SBATCH -o sbatch.log
#SBATCH --open-mode truncate
#SBATCH -M rzhasgpu

path=$PWD

cd $path/1DBurgersEqn
./generateResults.sh

cd $path/2DBurgersEqn
./generateResults.sh
