.libPaths()
# To get a list and small description of all the R packages installed in the system, call the list() function:
list()

install.packages("cluster")

library("cluster")
library(h="cluster") # print info

# data sets in lib
data(package="cluster")

detach("package:cluster")

update.packages()
new.packages()