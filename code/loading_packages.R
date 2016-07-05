#############################
# load packages at startup
# can be sourced by ".Rprofile"
#############################

# installs "pacman" if not installed
require("pacman") || utils::install.packages("pacman")
library(pacman)

# installs additonal R packages (CRAN packages)
pacman::p_load(gplots, ggplot2, gdata, car, pastecs, 
               psych, reshape, #plyr,
               nlme, pander, xtable, dplyr, xlsx, 
               rJava, plsdepot, data.table, Rcpp, Matrix,
               parallel, ape, reshape2, phangorn, stringi,
               stringr, downloader, devtools, data.table, RCurl, knitr)

# Bioconductor packages
source("https://bioconductor.org/biocLite.R")
biocLite("Rsubread")
# loads and installs (if necessary) the following packages from Bioconductor
# require("Rsubread") || BiocInstaller::biocLite("Rsubread")
require("DECIPHER") || BiocInstaller::biocLite("DECIPHER")
require("Biostrings") || BiocInstaller::biocLite("Biostrings")
require("BSgenome") || BiocInstaller::biocLite("BSgenome")
require("sangerseqR") ||BiocInstaller::biocLite("sangerseqR")
require("sangeranalyseR") || devtools::install_github("roblanf/sangeranalyseR")

library(devtools)
library(Biostrings)
library(BSgenome)
library(sangerseqR)
library(DECIPHER)
library(sangeranalyseR)

# list of installed packages in this project
pckg_list <- as.data.frame(installed.packages())

