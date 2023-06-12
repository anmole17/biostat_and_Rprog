#  Linear regression in R

# lm is used to fit linear models

#-----------------------------------------------------------

#### Part-A : Straight line fit without errors

# define 2 data sets as vectors
xdat = c(1,2,3,4,5,6,7,8,9,10)
ydat = c(16.5, 23.3, 35.5, 45.8, 57.9, 68.0, 73.4, 89.0, 97.9, 107.0)

# create a data frame of vectors
df = data.frame(x=xdat, y=ydat)

## function call for lm(). Here,x~y represents a linear relationship "y = a0 + a1 x "
#    (Use y~x-1 if you dont want intercept)

dat = lm(y~x, df)

# In the above formuls, use y~x-1 if you dont want intercept


## print the fitted reults

# intercept
print(paste("intercept = ", dat$coefficients[1]))

# slope
print(paste("slope = ", dat$coefficients[2]))

#fitted values
print(dat$fitted.values)

# To see 95% confidence interval
confint(dat, level=0.95)

# A summary of entire analysis
print(summary(dat))

# plot the results. First plot data points and then x versus fitted y)
plot(xdat,ydat, col="red")
lines(xdat, dat$fitted.values, col="blue")


## Uncomment the following line to see the residual plots. 

#plot(dat)


##-----------------------------------------------------------------------------------



##Part-B :  fit with errors (weights) on individual data points


#data vectors
xdat = c(1,2,3,4,5,6,7,8,9,10)
ydat = c(16.5, 23.3, 35.5, 45.8, 57.9, 68.0, 73.4, 89.0, 97.9, 107.0)

# errors on data points. Vector of errors on each y value.
errors = c(3.0, 4.1, 5.0, 5.5, 6.0, 6.2, 1.0, 1.0, 1.0, 1.0)

## create data frame with x,y point and errors
df = data.frame(x = xdat, y=ydat, err=errors)

## function call for lm()
data = lm(y~x, data = df, weights = 1/df$err)

print(data)

X11()

# plot the results
plot(xdat,ydat,col="red")
lines(xdat, data$fitted.values, col="blue")
## draw error bars on individual data points
arrows(xdat, ydat-errors, xdat, ydat+errors, length=0.05, angle=90, code=3)
