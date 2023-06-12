data = c(5.3,6.1,4.9,5.5,4.4,4.9,6.0,5.7,5.1,5.6,5.4,5.3,5.8,5.4,5.2,5.5,5.4)

boxplot(x = data, range=0.0, horizontal=TRUE, varwidth=FALSE, notch=FALSE,
        outline=TRUE, boxwex=0.3, border=c("blue"), xlab="Expression Level", 
        ylab="Gene-A")

# Generate a data vector 
x <- c(1,5,7,8,9,7,5,1,8,5,6,7,8,9,8,6,7,8,10,19,6,7,8,6,4,6) 

# We call boxplot with single vector.  range=0.0 causes the whiskers to extend upto extreme points.

boxplot(x, range=0.0, horizontal=FALSE, varwidth=TRUE, notch=FALSE,
        outline=TRUE, boxwex=0.3, border=c("blue"), col=c("red"), xlab="Gene-A", ylab="Expression Level")


# Generate three vectors
x <- c(1,5,7,8,9,7,5,1,8,5,6,7,8,9,8,6,7,8,10,19,6,7,8,6,4,6) 
y = rnorm(50, mean=8, sd=2)
z = rnorm(1000, mean=10, sd=1.8)

# we create a list of vectors and call box plot with it.  
# range=0.0 causes the whiskers to extend upto extreme points. 
# varwidth=TRUE sets the box width proportional to the number of data points.

# Three Box-Whiskers are plotted for x, y and x vectors
alis <- list(x,y,z)

boxplot(alis, range=0.0, horizontal=FALSE, varwidth=TRUE, notch=FALSE,
        outline=TRUE, names=c("A","B","C"), boxwex=0.3, 
        border=c("blue","blue","blue"), col=c("red","red","red"),
        xlab = "Tissue type", ylab = "Expression Level")

# with notch

x <- c(1,5,7,8,9,7,5,1,8,5,6,7,8,9,8,6,7,8,10,19,6,7,8,6,4,6) 
y = rnorm(26, mean=8, sd=2)
z = rnorm(26, mean=10, sd=1.8)

aframe <- data.frame(x,y,z)

#range=0.0 causes the whiskers to extend upto extreme points.
boxplot(aframe, range=0.0, horizontal=FALSE, varwidth=FALSE, notch=TRUE,
        outline=TRUE, names=c("A","B","C"), boxwex=0.5, 
        border=c("blue","blue","blue"), col=c("red","red","red"),
        xlab = "Tissue type", ylab = "Expression Level")


# outliers marked
x <- c(1,5,7,8,9,7,5,1,8,5,6,7,8,9,8,6,7,8,10,19,6,7,8,6,4,6) 
y = rnorm(50, mean=8, sd=2)
z = rnorm(1000, mean=10, sd=1.8)

aframe <- list(x,y,z)

# We call boxplot with single vector
boxplot(aframe, horizontal=FALSE, varwidth=TRUE, notch=FALSE, range=1.5,
        outline=TRUE, names=c("A","B","C"), boxwex=0.3, border=c("blue"),
        col=c("red"))
