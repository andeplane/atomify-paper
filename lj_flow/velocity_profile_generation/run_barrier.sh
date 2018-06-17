#!/bin/bash

#for rho in 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.10 0.15 0.20 0.30 0.40 0.50 0.60 0.70 0.80 0.90 1.00
#for rho in 0.01 0.02 0.05 0.10 0.15 0.20 0.30 0.40 0.50
for rho in 0.001 0.005 0.01 0.02 0.05 0.10 0.15 0.20 0.30 0.40 0.50
do
	/lammps/lammps_gpu/src/lmp_mpi -in inner_cylinder.in -pk gpu 1 gpuID 0 0 -pk omp 4 -sf hybrid gpu omp -var rho $rho -e both
	#/lammps/lammps_kokkos/src/lmp_kokkos_cuda_mpi -in inner_cylinder.in -pk kokkos newton on neigh half -sf kk -var rho $rho -e both
	mv velocity.txt velocity.$rho.txt
	mv trajectory.bin trajectory.$rho.bin
	sleep 1
done
