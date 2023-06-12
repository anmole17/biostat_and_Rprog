##### Using R library functions for binomial distribution 

n = 10   ## number of trials
p = 0.5  ## probability of success in a trial
x = 3    ## number of successes


### Probability density function.
### dbinom(x,n,p) returns the binomial probability for x successes in n trials, where p is probability 
###    of success in a single trial
binomial_probability = dbinom(x,n,p)
print(paste("binomial probability for (",x,",",n,",",p,") = ",binomial_probability) )


### Function for computing cumulative probability.
### pbinom(x,n,p) gives cumulative probability for a binomial distribution from 0 to x. 
cumulative_probability = pbinom(x,n,p)
print(paste("cumulative binomial probability for (",x,",",n,",",p,") = ",cumulative_probability) )


### Function for finding x value corresponing to a cumulative probability
x_value = qbinom(cumulative_probability, n, p)
print(paste("x value corresponding to the given  cumulative binomial probability = ",x_value) )

### Function that returns 4 random deviates from a Binomial distribution of given (n,p)
deviates = rbinom(4, n, p)
print(paste("4 binomial deviates :  "))
print(deviates)

par(mfrow = c(2,1))

### We plot a binomial density distribution using dbinom()
n = 10
p = 0.4
x = seq(0,10)
pdens = dbinom(x,n,p)
plot(x,pdens, type="h", col="red", xlab = "Binomial variable x", ylab="binomial probability", 
     main="binomial probability distribution")

## We generate frequency histogram of binomial deviates using rbinom()
n = 10
p = 0.5
xdev= rbinom(10000, n, p)
plot(table(xdev), type="h", xlab="binomial variable x", ylab="frequency",
     main="frequency distribution of binomial random deviates")
