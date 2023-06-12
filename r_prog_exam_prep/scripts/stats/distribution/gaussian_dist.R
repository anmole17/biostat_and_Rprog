##### Using R library functions for the Gaussian distribution

mean = 12     ## mean of the Gaussian
standev = 2.0 ## means of the standard deviation
x = 14.0    ## Gaussian variable value


### Probability density function

### dnorm(x,mu,sigma)  returns Gaussian probability density for given x,mu,sigma
gauss_density = dnorm(x,mean,standev)
gauss_density = round(gauss_density, digits=3)
print(paste("Gaussian probability for (",x,",",mean,",",standev,") = ", gauss_density) )

### dnorm(Z) returns a probability density for a given Z in unit Gaussian.
Z = 2.0
unit_norm = dnorm(Z)
unit_norm = round(unit_norm,3)
print(paste("Unit Gaussian probability for  Z = ",Z," is ",unit_norm ) )

###  Plotting the Gaussian curve in the x range of (mu - 4*sigma, mu + 4*sigma)
mean = 12
standev = 2
x = seq(mean - 4*standev, mean + 4*standev, 100)
string =  substitute( paste("N( x, ", mu, " = 12,  ", sigma, " = 2 " , ")"  ))
curve(dnorm(x, mean, standev), xlim=c(mean - 4*standev, mean +  4*standev),
      ylab=string, lwd=1.5, cex.lab=1.2, col="blue", main="Gaussian distribution")

X11()

## Plotting unit Gaussian curve
mean = 0
standev = 1
x = seq(mean - 4*standev, mean + 4*standev, 100)
string =  substitute( paste("N( Z, ", mu, " = 0,  ", sigma, " = 1 " , ")"  ))
curve(dnorm(x, mean, standev), xlim=c(mean - 4*standev, mean +  4*standev),
      xlab="Z", ylab=string, lwd=1.5, cex.lab=1.2, col="blue", main="Unot Normal distribution")

X11()

#### Generating cumulative probability (p-value) above upto a Z value in a unit Gaussian

#######  pnorm(Z) generates cumulative probability from minus infinity to Z
#######  when Z is positive, probability above Z is 1-pnorm(Z)
#######  when Z is negative, probability below Z is pnorm(Z)

Z = 2.6
pvalue = pnorm(Z)
pvalue = round(pvalue,3)
print(paste("cumulative probability from Z = minus infinity to ", Z, "is ", pvalue))

Z = -2.6
pvalue = pnorm(Z)  
pvalue = round(pvalue,3)
print(paste("cumulative probability from Z = minus infinity to ", Z, "is ", pvalue))


#### Generating Z value for a cumulative probability p
###  The function qnorm(p) returns Z value at which cumulative probability is p.

p = 0.95  ## cumulative probabilitu from minus infinity to Z.
Z = qnorm(p)
Z = round(Z, digits=3)
print(paste("Z value for a cumulative probability p = ", p, "is ", Z))


#### Generating random deviates from a Gaussian
### rnorm(n,mean, standev) returns a vector of n random deviates from a 
####     Gausian N(mean, standev).
### rnorm(n) returns a vector of n random deviates from a Gaussian  N(0,1)

ndev = rnorm(4, mean=15, sd=3)
ndev = round(ndev,digits=3)
print("Four Gaussian deviates from N(15,3) : ")
print(ndev)

## plotting the histogram of 10000 random deviates from unit Gaussian:
hist(rnorm(10000), breaks=30, col="purple", main="histogram of Gaussian deviates")