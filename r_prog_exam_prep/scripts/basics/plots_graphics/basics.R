library("grid")
library("grDevices")
install.packages("ggplot2")
library("ggplot2")
install.packages('RMySQL', repos='http://cran.us.r-project.org')
X11() # new plot open

# multiple plots on same 
par(mfrow = c(2,2))

# The parameter value mfrow = c(2,2) divides the canvas into 2x2 sections and 
#plots the 4 graphs successively along the rows. 
#Thus, firat 2 plots will be on first row, next two will be on second row. 
# Similarly, the option mfcol = c(2,3) divies the canvas into 2 row and 3 columns.


# This script demonstrates multiple plots in a single figure.

##  Set up plotting in two rows and three columns.
##  Set the outer margin for bottom, left, and right as 0 and
##  outer margin for top is 2 lines of text.
##  Plotting goes along rows first.
##  To plot along columns, usde "mfcol" instead of mfrow.
par( mfrow = c( 2, 3 ), oma = c( 0, 0, 2, 0 ) )


# using par(), sometimes we want to skip a plot in the matrix and 
#leave a blank space in its location. This can be achived using the call to 
plot.new()# function

split.screen()  # same use

split.screen(figs = c(1,3), screen = 1)) 


