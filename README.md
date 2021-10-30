# RData-to-csv bulk converter
My friend needed this and it took far more effort than anticipated to do it. Here is something for future reference. I don't know how to use R, and this is something that's supposed to be useful who people who likewise have never touched R before.

### Known problems:
* Windows: trouble installing plyr library
* Linux (Arch): same, but I was able to fix it by sudo pacmaning `tcl tk`


Get your .RData files in one folder with the script.

### In R console
* make sure your working directory (check with `getwk()`) is in the folder with your stuff, eventually set it with `setwd()`
* install.packages("sp")
* install.packages("plyr")
* script("script.R")

Credits to collected stack-overflow articles 🥺
