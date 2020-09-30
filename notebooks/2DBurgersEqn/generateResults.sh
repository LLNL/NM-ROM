#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -J generateResults
#SBATCH -t 24:00:00
#SBATCH -p pbatch
#SBATCH -o sbatch.log
#SBATCH --open-mode truncate
#SBATCH -M rzhasgpu

#!/bin/bash
path=$PWD

cd $path/test_red-dim
./generateResults.sh

cd $path/test_DEIM
./generateResults.sh

cd $path/test_nparam
./generateResults.sh

cd $path/test_predictive
./generateResults.sh
