library(dplyr)


glimpse(pckslist)


plot(pckslist$Package ~ pckslist$Built)


######################
# Lecture 3
######################

## defining and teaching day to day work

# "learn to love the dataframe"

# tible class: package {tible} 
# tible can also be found in {dplyr}
# print is a nice function in "tible"
# no more stringsAsFactors, the default is strings = character
# tibble is diferent from dataframe in the fact that: 
# df as first argument, this facilitates pipe ( %>% )
#

