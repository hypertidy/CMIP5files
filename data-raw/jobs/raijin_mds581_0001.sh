#!/bin/bash
#PBS -P a99 
#PBS -q normal 
#PBS -l walltime=00:00:20
#PBS -l mem=300MB 
#PBS -l jobfs=1GB
#PBS -l ncpus=1
#PBS -l software=r_netcdf.sh
#PBS -l /home/581/mds581/CMIP5files/data-raw/jobs # The job will be executed from current working directory instead of home.
./rspawn.sh  > r_netcdf_0001.out