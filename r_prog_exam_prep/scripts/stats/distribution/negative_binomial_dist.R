## Negative binomial distribution functions in R

## p = probability of success in a trial
## r = number of successes observed 
## y = number of failures before r successes

## Computing negative binomial probability density for observing y failures before r successes:
y = 5
r = 3
p = 0.3
prob =  dnbinom(y, r, p)

print(paste("Negative binomial probability for " , y , " failures before " ,
            r , " successes is ",prob))


### Function for computing cumulative probability from x=0 to a given value.
### pnbinom(x,r,p) gives cumulative probability for a negative binomial distribution from 0 to x.
x = 5 
cumulative_probability = pnbinom(x,r,p)
print(paste("cumulative negative binomial probability from x=0 to", x,
            " for ", x," failures before ",r, " successes is ", 
            cumulative_probability) )

### Function for finding x value corresponing to a cumulative probability 
cumulative_probability = 0.5
x_value = qnbinom(cumulative_probability, r, p)
print(paste("number of failures corresponding to the given  cumulative binomial probability of ",cumulative_probability," is ",x_value) )

### Function that returns 4 random deviates from a Negative Binomial distribution of given (n,p)
deviates = rnbinom(4, r, p)
print(paste("4 binomial deviates :  "))
print(deviates)


### We plot a binomial density distribution using dnbinom()
r = 10
p = 0.3
y = seq(0,60)
pdens = dnbinom(y,r,p)
plot(y,pdens, type="h", col="red",
     xlab = "Negative Binomial variable y", 
     ylab="Negative binomial probability", 
     main="Negative binomial distribution (r=10, p=0.3)")

## We generate frequency histogram of binomial deviates using rbinom()
r = 10
p = 0.3
xdev= rnbinom(10000, r, p)
plot(table(xdev), type="h", xlab="Negative binomial variable y",
     ylab="frequency",
     main="Distribution of negative binomial random deviates (r=10,p=0.3)")