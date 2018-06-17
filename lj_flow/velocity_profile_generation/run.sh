#!/bin/bash

for rho in 0.01 0.02 0.04 0.08 0.16 0.32
do
	/lammps/lammps/src/lmp_mpi -in inner_cylinder.in -pk gpu 1 gpuID 2 2 -sf gpu -var rho $rho -e both
	mv velocity.txt velocity.$rho.txt
	mv trajectory.bin trajectory.$rho.bin
	sleep 1
done