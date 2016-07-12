################################
# CSAMA Course 2016
################################

## Installing course materials
source("http://www-huber.embl.de/users/reyes/csama2016/installPackages.R")
## Warning in normalizePath(path.expand(path), winslash, mustWork) :
##  path[25]="": The filename, directory name, or volume label syntax is incorrect

install.packages("C://RWorkingDir/Projects/CSAMA2016/downloaded_packages/Rsubread_1.22.2.tar.gz",repos = NULL,
type="source")
Sys.getenv("PATH")
Sys.which("make")
pcks <- installed.packages()
sessionInfo()
cat(unlist(sessionInfo()), file = "session_csama2016.txt")

library(dplyr)
survival <- pcks %>% filter(Package == "survival")
glimpse(survival)

search()
###################################
# aditional packages
###################################
install.packages(downloader)
library(downloader)
library(R.utils)



#########################
# creating project dirs
#########################
## creates folders: "./data", "./code", "./images", "./output", "./reports"
## "./miscellaneous"

dirs <- c("./data", "./code", "./images", "./output", 
          "./reports","./miscellaneous")

dir.create(dirs[1])
dir.create(dirs[2])
dir.create(dirs[3])
dir.create(dirs[4])
dir.create(dirs[5])
dir.create(dirs[6])

#############################################
# Getting data
#############################################

# ----urls for DownloadingData----------------------------------------------------
url1 <- "http://www-huber.embl.de/users/reyes/introData.zip"
url2 <- "http://github.com/mikelove/CSAMA2016data/archive/master.zip"

## download file "introData.zip" from url1
download(url = url1, "./data/introData.zip", mode = "wb")
## unzip(".data/introData.zip", exdir = "./data")

download(url = url2, "./data/master.zip", mode = "wb")
## unzip(".data/master.zip", exdir = "./data")


## ---- ReadingDataSet-----------------------------------------------------
## for help:
# ??read.table
file <- list.files("./data", pattern = "txt", full.names = TRUE)
data <- read.table(file, sep = ";", header = TRUE, na.strings = "?")

