# NOTE:
    # Data on OSM data comes from the personal pipeline
    # on my local computer (PT)

#----------------------------------------------
# load libraries
suppressPackageStartupMessages(
    {
    library(targets)
    library(future)
    library(future.callr)
    library(tarchetypes)
    library(rlang)
    library(dplyr)
    library(tidyr)
    library(ggplot2)
    library(sf)
    library(data.table)
    library(readxl)
    library(openxlsx)
    library(qs)
    library(docstring)
    library(stringr)
    library(MetBrewer)
    library(fst)
    }
)

#----------------------------------------------
# set up for future package
plan(callr)

#----------------------------------------------
# paths

main_path <- "N:/Just_Nature/comparable_cities"
data_path <- file.path(main_path, "data")
output_path <- file.path(main_path, "output")
code_path <- file.path(main_path, "code")

#----------------------------------------------
# set working directory

setwd(main_path)