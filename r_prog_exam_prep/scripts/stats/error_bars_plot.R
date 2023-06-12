## error bars on bar plots

## mean values
means = c(20.34, 19.49, 25.68)

## standard errors
stderr = c(0.83, 1.51, 1.39)

## plot the bars
means_barx = barplot(means, names.arg=c('A','B','C'),ylim=c(0,40), axis.lty=1, xlab="Experiments",
                     ylab="Value (arbitrary units)", width=0.5, xlim=c(0,10), space=1.0, 
                     col="grey",font.lab=1, main="Errors on bar plot",
                     cex.lab=1.2, cex.axis=1.2, cex.names=1.2, cex.main=1.2 )

## Plot the up and down arrows as error bars on the bars
arrows(means_barx, means+stderr, means_barx, means-stderr, angle=90, code=3, length=0.06, col="blue")


X11()


### error bars on (x,y) points

## X and Y values of data points
x = c(5, 10, 15, 20, 25, 30, 35, 40, 45, 50)
y = c(5, 9, 13, 17, 20, 24, 26, 27, 28, 27)

## errors on Y values of individual data points. Generally, standard error on mean.
errors = c(0.5, 0.9, 1.4, 1.5, 2.0, 2.2, 2.3, 2.5, 2.9, 3.0)

## Plot the points first.
plot(x,y, ylim=c(0,35), type="o", xlab="Concentration", ylab="Optical activity", main="Error bars on data points")

## draw arrows up and down of data points to show the error bars.
arrows(x, y+errors, x, y-errors, angle=90, code=3, length=0.06, col="blue")