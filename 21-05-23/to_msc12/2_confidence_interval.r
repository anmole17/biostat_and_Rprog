
# Computing Confidence interval for a given data set

xdat = c(9.8,11.1,9.3,10.1,11.2,9.3,8.5,12.7,9.6,11.2,10.7,10.1,8.7,7.1)

alpha = 0.05  # confidence level

## Two sided 95% Confidence interval
xbar = mean(xdat)

n = length(xdat)

s = sd(xdat)

CI95 = qt(1-alpha/2, n) * s/sqrt(n)

print(CI95)

xmin = xbar - CI95

xmax = xbar + CI95

print(paste( "(", xmin, ",", xmax, ")" ) )


