##### Using R library functions for Gamma distribution
## Probability density for a given x, from a distribution with shape and scale values:
prob_dens = dgamma(x=6, shape=4, scale=1)
prob_dens = format(prob_dens, digits=4)
print(paste("Gamma probability density for x=6, scale=4, shape=1 is = ", prob_dens))

## Cumulative probability upto x=6 for a gamma pdf with the given scale and shape values.
cum_prob = pgamma(q=6, shape=4, scale=1)  ## function uses 'q' for x value
cum_prob = format(cum_prob, digits=4)
print(paste("gamma cumulative probability upto x=6 for scale=4, shape=1 is  =  ", cum_prob))

## The value of variable x upto which the cumulative probability is p, for a 
## gamma distribution with given shape and scale parameters
x = qgamma(p = 0.85, shape=4, scale=1)
x = format(x, digits=4)
print(paste("varable x at which cumulative probability is 0.85 is  =  ", x))

## Generate 5 random deviates from a gamma distribution with parameters shape=4, scale=1
print(rgamma(n=6, shape=4, scale=1))


## we will draw 2 graphs on the same plot

par(mfrow=c(2,1))

## Drawing a gamma distribution pdf in x = 0 to 12, with scale=1, shape=4
x = seq(0,12, 0.5)
gamma_pdf = dgamma(x, shape=4, scale=1)
plot(x, gamma_pdf, col="blue", type="b", xlab="Gamma varbale x", ylab="Gamma PDF")
text(8.0, 0.2, "shape = 4,  scale=1")

## Plotting the frequency histogram of gamma random deviate for shape=4, scale=1
hist(rgamma(n=10000, shape=4, scale=1), breaks=30, col="red", xlab="gamma variable x", ylab="frequency",
     main = " ")
text(11, 800, "shape = 4, scale = 1")