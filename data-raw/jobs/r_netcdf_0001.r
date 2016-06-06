
dp <- "/g/data/ua6/unofficial-ESG-replica/tmp/tree/tds.ucar.edu/thredds/fileServer/datazone/cmip5_data/cmip5/output1/NCAR/CCSM4/rcp85/mon/ocean/Omon/r6i1p1/v20140820/tauuo"
library(raster)
f <- list.files(dp, full.names = TRUE)
library(rancid)
library(angstroms)
nc <- NetCDF(f)

print(nc$variable)
saveRDS(nc, file = file.path("nc", sprintf("%s.rds", nc$file$filename)))
