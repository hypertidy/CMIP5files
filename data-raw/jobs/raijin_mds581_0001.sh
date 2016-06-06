#!/bin/bash
#PBS -P m68
#PBS -q normal 
#PBS -l walltime=00:06:00,mem=300MB,ncpus=1

module load   netcdf/4.3.3.1p

cd ~/Git/CMIP5files/data-raw/jobs
~/packages/bin/R CMD BATCH r_netcdf_0001.r

