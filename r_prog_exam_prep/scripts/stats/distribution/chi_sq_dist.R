
##### Using R library functions for Chi-square distribution
## Probability density for a given x, from a distribution with given degrees of freedom:
prob_dens = dchisq(x=6, df=5)
prob_dens = format(prob_dens, digits=4)
print(paste("Chi-square probability density for x=6, df=5 is = ", prob_dens))

## Cumulative probability upto x=6 for a Chi-square pdf with the given degrees of freedom.
cum_prob = pchisq(q=6, df=10)  ## function uses 'q' for x value
cum_prob = format(cum_prob, digits=4)
print(paste("chi-square cumulative probability upto x=6 for degrees of freedom 10 is  =  ", cum_prob))

## The value of variable x upto which the cumulative probability is p, for a 
## chi-square distribution with given degrees of freedom
x = qchisq(p = 0.85, df=6)
x = format(x, digits=4)
print(paste("value x at which cumulative probability is 0.85 for 6 degrees of freedom = ",x))

## Generate 5 random deviates from a chi-square distribution with degrees of freedom 10
print(rchisq(n=6, df=10))


## we will draw 2 graphs on the same plot

par(mfrow=c(2,1))

## Drawing a chi-square distribution pdf in x = 0 to 12, with df=6
x = seq(0,16, 0.5)
chisq_pdf = dchisq(x, df=6)
plot(x, chisq_pdf, col="blue", type="b", xlab="Chi-square varbale x", ylab="Chi-square PDF")
text(12.0, 0.12, "degrees of freedom n = 6 ")

## Plotting the frequency histogram of gamma random deviate for shape=4, scale=1
hist(rchisq(n=10000, df=6), breaks=30, col="red", xlab="chi-square variable x",                             ylab="frequency",main = " ")
text(25, 1300, "degrees of freedom n = 6")
