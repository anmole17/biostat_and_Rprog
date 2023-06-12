##### Using R library functions for Poisson distribution 

## mu = mean number of events per unit intervel
## x = number of events in the same interval

## Computing Poisson probability density x given mean mu

mu = 10
x = 7
prob = dpois(x,mu)
prob = round(prob, digits=4)
print(paste("Poisson probability for x = ", x, "  mean = ", mu, " is ", prob))

### Function for computing cumulative probability.
### ppois(x,mu) gives cumulative probability for a Poisson distribution from 0 to x.
mu = 10
x = 7
cumulative_probability = ppois(x,mu)
cumulative_probability = round(cumulative_probability, digits=4)
print(paste("cumulative binomial probability for P(x=",x,",  mu=",mu,") = ",
            cumulative_probability) )

### Function for finding x value corresponing to a cumulative probability
mu = 10
cumulative_probability = 0.2202
x_value = qpois(cumulative_probability, mu)
print(paste("x value corresponding to the given  cumulative binomial probability ",
            cumulative_probability,"is ",x_value) )

### Function that returns 4 random deviates from a Poisson distribution of given mean

n = 4
mu = 10
deviates = rpois(n,mu)
print(paste("4 binomial deviates :  "))
print(deviates)


### We plot a Poisson density distribution using dpois()

par(mfrow=c(2,1))

mu = 6
x = seq(0,14)
pdens = dpois(x,mu)
plot(x,pdens, type="h", col="red", xlab = "Poisson variable x",
     ylab="Poisson probability", 
     main="Poisson probability distribution (mean = 6)")

## We generate frequency histogram of binomial deviates using rbinom()
mu = 6
xdev= rpois(10000, mu)
plot(table(xdev), type="h", xlab="binomial variable x", ylab="frequency",
     main="frequency distribution of Poisson deviates (mean = 6)")