### just an example // dont get worked up

## Call the first plot. This is drawn at the location row 1, column 1:
## simple (X,Y) plot
plot(c(1,2,3,4,5,6),c(10,18,29,42,55,66), type="b", col="blue", main="Figure-1(A)",
     xlab="X-value", ylab="Y-value")

## Call the second plot. This is drawn at the location row 1, column 2:
## We generate 2 sets of 100 uniform random numbers and create their scatter plot. 
## "runif(100)" returns 100 uniform random numbers between 0 and 1.
plot(runif(100), runif(100), col="red", pch = 8, xlab="deviate-1",
     ylab="deviate-2", main="Figure-1(B)")

##Call the third plot. This is located in row 1, column 3:
## "rnorm(10000)"generate a histogram of 10000 gaussian deviates
hist(rnorm(10000), breaks=30, col="springgreen4", xlim = c(-5,5), xlab="Unit Gaussian Z value",
     ylab="Frequency", main="Figure-1(C)")

## Call the fourth plot. It is located in row 2, column 1:
## We generate 20 poinrs from a Poisson distribution and plot them.
plot( rpois(n=20, lambda=5), type = "h", col="purple", xlab="Poisson deviate : mean=5", 
      ylab="frequency", main="Figure-1(D)")

##  plot.new() skips a position, if needed.


##  The fifth plot is located in row 2, column 2:
# Create a Pie chart with a heading and rainbow colors
result <- c(10, 30, 60, 40, 90)
pie(x = result, main="Figure-1(E)", col=rainbow(length(result)), 
    label=c("Mol-1","Mol-2","Mol-3", "Mol-4", "Mol-5"))

## The sixth plot is located in row 2, column 3
# we create a list of vectors and call box plot with it.
# Three Box-Whiskers are plotted, for x, y and x vectors
x <- c(1,5,7,8,9,7,5,1,8,5,6,7,8,9,8,6,7,8,10,19,6,7,8,6,4,6) 
y = x*1.5
z = x*2.3
alis <- list(x,y,z)
boxplot(alis, range=0.0, horizontal=FALSE, varwidth=TRUE, notch=FALSE,
        outline=TRUE, names=c("A","B","C"), boxwex=0.3, 
        border=c("blue","blue","blue"), col=c("red","red","red"), main="Figure-1(F)")

# Title is given to the whole of the plot.
title("A visual summary of the results", outer=TRUE)


## drawing 
plot.new()

plot.window(xlim=c(0,2), ylim=c(0,10))

axis(1)

axis(2)

x = c(0.0, 0.5,1.0, 1.5, 2.0)

y =  c(0.0, 2.0, 6.0, 8.2, 10. )

lines(x,y, lwd=2, col="blue")

title(xlab = "X-axis value")

title(ylab = "Y-axis value")

box()

## Adding points and lines to the plot

# create pairs of data points
x = c(1,2,3,4,5,6)
y =  c(10,20,30,40,50,60)

# Create a normal plot
plot(x, y, type="o", xlim=c(1,7), ylim=c(0, 70), 
     xlab="This is X-value", ylab="This is Y-value")

# create a new set of data points
x1 = c(1,2,3,4,5,6)
y1 = c(8, 14, 26, 35, 44, 53)

# Adds the above points to the existing plot
points(x1, y1, col="blue", pch=18, cex=1.4)

# create a new set of new data points
x2 = c(1,2,3,4,5,6)
y2 = c(6, 10, 18, 26, 38, 45)

# Join the above data points with a line
lines(x2,y2, lty=2, col="red", lwd=2)


## Drawing horizontal and vertical lines across the plot


# Define a data set
x = c(1,2,3,4,5,6,7,8,9,10)
y = c(10,20,30,40,50,60,70,80,90,100)

# create a plot
plot(x, y, type="o", xlim=c(0,11), ylim=c(0, 110), 
     xlab="This is X-value", ylab="This is Y-value")

# add title
title(main="Lines across the plot", col="black", font=2)

# draw red colored vertical lines at x values 3,5 and 7
abline(v=c(3,5,7), lty=2, col="red")

# draw purple colored horizontal lines at y values at 20 and 80
abline(h=c(20,80), lwd=2, col="purple")

## Drawing disconnected line segments to a plot

# Draw a straight line using a set of (x,y) points
x = c(1,2,3,4,5,6,7,8,9,10)
y = c(10,20,30,40,50,60,70,80,90,100)

plot(x, y, type="o", xlim=c(0,11), ylim=c(0, 110), 
     xlab="This is X-value", ylab="This is Y-value", main="Line segments")


# Draw 2 isolated line segments inside the plot. 
segments(0,100,2,100, lwd=2, col="blue")

segments(1,90,2,90, lwd=2, col="blue")


# Define a set of n data points
xseg = c(4,5,6,7,4)
yseg = c(0,10,28,15,0)

# define a sequence from 1 to n-1
s = seq(length(xseg)-1)

# connect the sequence of points with line segments successively.
segments(xseg[s],yseg[s], xseg[s+1], yseg[s+1], col="green", lwd=2)



## Drawing polygons

## First, draw a graph with points and lines with plot()
x = seq(0,20,0.5)
y = 3*x/(2+x)

plot(x,y,cex=0.7, type="o", xlab="Concentration [x]", ylab="d[x]/dt")


## Draw a polygon defining an area on the graph -- This is a red square
xx = c(2.3,7.5,7.5,2.5)
yy = c(1.6,1.6,2.3,2.3)
# When density=0, col refers to the line colour
polygon(xx,yy, density=0, col="red")


## Draw a polygon filled with blue colour.
xx = c(5,8,8,6.5,5)
yy = c(0,0,0.5,0.8,0.5)
# when density is not mentioned, col refers to filling colour.
polygon(xx,yy,col="blue")


## Draw a polygon filled with lines
xx = c(10,10,13)
yy = c(0.5,1.0,0.75)
## polygon is filled with 20 lines per inch, green in colour.
polygon(xx,yy,density=20, col="green", border="black")


##  Shaded area in a graph

## create data vectors.
x = c(1,2,3,4,5,6,7,8,9,10)
y = c(10, 39, 27, 47, 40, 53, 59, 62, 48, 69)

# Drop the end points onto the horizontal axis
xx = c(1, x, 10)
yy = c(0, y, 0)

# plot the points without actually displaying them.
plot(x,y,type="n", ylim=c(0,100))

## create a polygon between data points and X axis and colour it
##   to get a shaded region.
polygon(xx,yy,col="purple")


## Drawing arrows in the plot


## define vectors of coordinates
x = c(1,2,3,4,5,6,7,8,9,10)
y = c(10,20,30,40,50,60,70,80,90,100)

# plot the graph
plot(x, y, type="o", xlim=c(0,11), ylim=c(0, 110), pch=10,
     xlab="This is X-value", ylab="This is Y-value", main="Drawing arrows")

## Draw individual arrows
arrows(6,80,7.8,80, col="blue")

arrows(4,60,5.6,60, length = 0.15, angle = 30, lty=1, lwd=2,col="green")

arrows(5,40,5,50, length = 0.15, angle = 30, lty=1,code=1 , lwd=2, col="purple")

arrows(8,60,7,70, length = 0.15, angle = 20, lty=1,code=3 , lwd=3, col="red")

dev.off()

