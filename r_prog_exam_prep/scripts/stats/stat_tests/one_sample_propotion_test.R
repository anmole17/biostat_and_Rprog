##################################################
## One sample proportion test

## From a given adult population, a random sample of 2600 adult men were tested for obesity. 
## The data showed that 710 to be obese. From this data, can we conclude that more than 25 percent 
## of the population are obese? Let 0.05 be the significance level for this test.

##since the sample size is large, we use the binomial test.

x = 710

n = 2600

p = 0.25

alternative = "greater"

res =  binom.test(x, n, p, alternative)

print(res)

###############------------------------------------------------