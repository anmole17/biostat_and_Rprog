## Compute confidence intervals and use them as error

A = c(23.3, 20.0, 20.2, 15.3, 17.7, 23.1, 19.9, 20.2, 23.9, 19.8)

B = c(10.1, 14.9, 17.3, 18.2, 27.2, 26.4, 15.4, 22.0, 24.2, 18.0, 23.9, 16.3)

C = c(24.9, 15.6, 25.7, 25.0, 33.7, 23.9, 20.2, 30.7, 24.3, 25.8, 30.8, 27.6)

## compute sample sizes
nA = length(A)
nB = length(B)
nC = length(C)

## Compute one side length of confidence interval
CI95_A  = qt(0.95, nA-1) * sd(A)/sqrt(nA)
CI95_B  = qt(0.95, nB-1) * sd(B)/sqrt(nB)
CI95_C  = qt(0.95, nC-1) * sd(C)/sqrt(nC)

## error bars on bar plots

## mean values
means = c(mean(A), mean(B), mean(C))

## standard errors
err = c(CI95_A, CI95_B, CI95_C)

## plot the bars
means_barx = barplot(means, names.arg=c('A','B','C'),ylim=c(0,40), axis.lty=1, xlab="Experiments",
                    ylab="Value (arbitrary units)", width=0.5, xlim=c(0,10), space=1.0, 
                    col="grey",font.lab=1, main="Errors on bar plot",
                    cex.lab=1.2, cex.axis=1.2, cex.names=1.2, cex.main=1.2 )

## Plot the up and down arrows as error bars on the bars
arrows(means_barx, means+err, means_barx, means-err, angle=90, code=3, length=0.06, col="blue")


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


