
##### Using R library functions for Poisson distribution

yx = dexp(3, 0.5)
yx = round(yx, digits=4)
print(paste("Probability density at x=3 for beta = 1/2 is : ", yx))

px = pexp(3,0.5)
px = round(yx, digits=4)
print(paste("Cumulative probability upto x=3 for beta = 1/2 is : ", px))

qx = qexp(.935, 0.5)
qx = round(qx, digits=4)
print(paste("Value of x upto which cumulative probability is 0.35, for theta = 1/2 is : ", qx))

rx = rexp(4, 0.5)
rx = round(rx, digits=4)
print(paste("Four random deviates from exponential distribution with theta = 1/2 : "))
print(rx)