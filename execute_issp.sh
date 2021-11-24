#!/bin/sh

#SBATCH -p F1cpu
#SBATCH -N 1
#SBATCH -n 100
#SBATCH -c 1
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-user=naofuji.1220@gmail.com

python3 generate.py
source /home/issp/materiapps/intel/lammps/lammpsvars.sh
srun lammps < decomp.input
python3 rescale.py > rescale.atoms
source /home/issp/materiapps/intel/lammps/lammpsvars.sh
srun lammps < rescale.input
