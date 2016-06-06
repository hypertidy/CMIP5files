#!/bin/bash
#PBS -P a99 
#PBS -q normal 
#PBS -l walltime=00:00:20
#PBS -l mem=300MB 
#PBS -l jobfs=1GB
#PBS -l ncpus=1
#PBS -l software=r_netcdf.sh
./rspawn.sh  > r_netcdf_0001.out