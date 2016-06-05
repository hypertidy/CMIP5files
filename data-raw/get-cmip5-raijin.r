download.file("http://climate-cms.unsw.wikispaces.net/file/view/cmip5_raijin.db/553966810/cmip5_raijin.db", 
              "data-raw/cmip5_raijin.db", mode = "wb")
library(dplyr)
cmip5_db <- src_sqlite("data-raw/cmip5_raijin.db")
cmip5 <- tbl(cm5, "cmip5")
library(DT)


d <- collect(cmip5) 
d <- d[, c(setdiff(names(d), "id"), "id")]
datatable(d, class = 'cell-border stripe', filter = 'top', options = list(
  pageLength = 35, autoWidth = TRUE
))

# module load         proj/4.9.0  netcdf/4.3.3.1p  
dp <- "/g/data/ua6/unofficial-ESG-replica/tmp/tree/tds.ucar.edu/thredds/fileServer/datazone/cmip5_data/cmip5/output1/NCAR/CCSM4/rcp85/mon/ocean/Omon/r6i1p1/v20140820/tauuo"
library(raster)
f <- list.files(dp, full.names = TRUE)
library(rancid)
library(angstroms)
nc <- NetCDF(f)

print(nc$variable)
lonlat <- romscoords(f, c("lon", "lat"))
library(maptools)
data(wrld_simpl)
plot(raster(f, varname = "tauuo"))
plot(romsmap(wrld_simpl, lonlat), add = TRUE)
#install.packages(c("rworldmap", "rworldxtra"))


tt <- spbabel::sptable(wrld_simpl)
tt$x_[tt$x_ < 0] <- tt$x_[tt$x_ < 0] + 360
w <- spbabel::sp(tt)
plot(raster(f, varname = "tauuo"))
plot(romsmap(w, lonlat), add = TRUE)


