

## fitting an exponential function to data

## fit of the form   y = b1*exp(b2 * x)

## taking log on both sides,    log(y) = log(b1) + b2*x

## so, we fit log(y)~x

## log(b1) is intercept. So, b1 = exp(intercept)

## b2 is the slope, as we get.

## then, y_fitted = b1*exp(b2*x)

## --------------------------------------------------



## read data file
dat = read.csv(file="exponential_data.csv", header=TRUE)

xdat = dat$xdat

ydat = dat$ydat

err = dat$error

## error propagation while taking log of variable ydat.
err_log = err*(log(ydat)/ydat)

## Call the lm() function for linear fit between log(ydat) and xdat.
res = lm(log(ydat)~xdat, data = dat, weight = 1/err_log)

## print the summary of results
print(summary(res))

## retreive the slope and intercept
intercept = res$coefficients[[1]]
slope = res$coefficients[[2]]

## Get back the coefficient b1 of exponential fit.
b1 = exp(intercept)

b2 = slope

# Fitted y values
y_fitted = b1*exp(b2*xdat)


## Plot the data points with errors and fitted curve.
plot(xdat, ydat, col="blue", pch=20, main="exponential fit", ylim=c(0,45))
arrows(xdat, ydat+err, xdat, ydat-err, angle=90, code=3, length=0.06, col="blue")
lines(xdat, y_fitted, type="l", lw=2, col="red")
b1_string = paste("b1 = ", round(b1, digits=3) )
b2_string = paste("b2 = ", round(b2, digits=3) )
text(1,28, " y = b1*exp(b2)")
text(1,25,b1_string )
text(1,22, b2_string) 

##----------------------------------------------------------------------------


