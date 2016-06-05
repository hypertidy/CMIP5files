# CMIP5files

browseables for CMIP5

Start here: https://github.com/mdsumner/nectar/wiki/Raijin-CMIP5

# CMIP5 files

These seem to cause a lot of grief, but NetCDF always does. 

SQLite DB built by Python code on /g/data, lists tokenized file paths. This is useful but needs to be run routinely so it's up to date, and really make a full path to all files. 

* list actual files, find best way to list (i.e. multiple find jobs?)
* scan each file and record metadata for each as per rancid::NetCDF or equivalent


# Dev Plan

* first pass only scan a sample of files, develop a scoping estimate of how long / how much etc. 
* Use try/catch defenses to be reliable, and feed back lessons into rancid package
* Build searchable table of files with DT/Shiny (can we publish this off Raijin?)
* Allow select file to deliver metadata DB as constellation of tables (or ncdump, whatevs)
* Identify common patterns across all files in variables, dimensions
* Use to develope use-case read code



