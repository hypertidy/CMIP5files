library(shiny)
library(DT)


library(dplyr)
cmip5_db <- src_sqlite("D:/twotera/GIT/CMIP5files/data-raw/cmip5_raijin.db")
cmip5 <- tbl(cm5, "cmip5")


d <- collect(cmip5) 
d <- d[, c(setdiff(names(d), "id"), "id")]
shinyServer(function(input, output, session) {
  ##output$tbl_a = DT::renderDataTable(iris, server = FALSE)
  output$tbl = DT::renderDataTable(datatable(d, class = 'cell-border stripe', filter = 'top', options = list(
    pageLength = 35, autoWidth = TRUE
  )))
})