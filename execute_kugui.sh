#!/bin/sh

#PBS -q i2cpu
#PBS -l select=2:ncpus=128:mpiprocs=128:ompthreads=1
#PBS -l walltime=00:30:00
#PBS -N TEST

module load intel intel-mpi
python3 generate.py
mpiexec -n 128 ../../lammps/src/lmp_mpi < decomp.input > ./output.log1 2>&1
python3 rescale.py > rescale.atoms
mpiexec -n 128 ../../lammps/src/lmp_mpi < rescale.input > ./output.log2 2>&1
