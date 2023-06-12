####  Applying central limit theorem to Uniform distribution

# For Uniform distribution from min to max,

##  P(x) = 1/(max-min) in the range [min,max]
##       = 0  (outside this range)

## Let min=0, max=10

##  population mean = mu = integral from min to max of ( x * P(x) dx)

##                       = integral from 0 to of(x* (1/(max-min)) dx ) 
##                       = 5

##  population variance = sigmasqure = integral from min to max of ( (x-mu)^2 * P(x) dx )
##                                   = integral from 0 to 10 of ( (x-5)^2 * (1/10) dx )
##                                   = sqrt(25/3) =  2.886                                


####

par(mfrow = c(2,1))

## mean and sd of uniform distribution in [0,10], 
#computed as above.
mu = 5  ## 

sigma = sqrt(25/3)  

## plotting the histogram of uniform deviates between [0,10]
X = runif(100000, min=0, max=10)

hist(X, breaks=30, main="Histogram of X (uniform deviate)" )



## randomly drawing 50 data points from uniform 
#distribution in [0,10]
n = 10

Z = c()

## computing the Z variable vector for 
#100000 data sets of size 50 each.
for( i in 1:100000) {
  
  y = runif(n, min=0, max=10)
  
  z = (mean(y) - mu)/(sigma/sqrt(n))
  
  Z = c(Z,z)
  
}

## plotting the histogram of Z variable.
h = hist(Z, breaks = 30, col="blue", 
         main="Histogram of Z variable (sample size=10)")

## draw a Gaussian curve 
xfit<-seq(min(Z),max(Z),length=60) 
yfit<-dnorm(xfit,mean=mean(Z),sd=sd(Z)) 
yfit <- yfit*diff(h$mids[1:2])*length(Z) 
lines(xfit, yfit, col="red", lwd=1)