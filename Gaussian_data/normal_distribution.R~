# 13 April 2023
## Normal distribution in R library
## unit normal distributions
## 1. Given a Z value, returns area under unit normal curve
## from -Inf to Z
pvalue <- pnorm(1.6)
print(pvalue)

pvalue <- pnorm(-1.6)
print(pvalue)

## For a given pvalue, return the Z value for which area under curve from -Inf to Z is the given pvalue.
qvalue <- qnorm(pvalue)
qvalue <- qnorm(0.05)
qvalue
# -1.644

qvalue <- qnorm(0.95)
qvalue
# +1.644

qvalue <- qnorm(0.5)
qvalue
# 0

## 3. At a given Z-value, returns the probability density(Y-axis)
## on unit normal distribution

pdens <- dnorm(1.5)
pdens
#[1] 0.1295176
pdens <- dnorm(1.0)
pdens
#[1] 0.2419707
pdens <- dnorm(0)
pdens
#[1] 0.3989423
 
## lets plot Gaussan function

Z<- seq(-4,4,0.1)
pdens<- dnorm(Z)
plot(Z,pdens, type="o") # "o" for overlay, "l" for line

## 4. returns data points from a Normal Distrivution

Z<- rnorm(1)

print(Z)

## Plot a histogram of normal Distribution by drawing 
## large numbers of random samples (deviates)

Z=rnorm(100)
hist(Z)
X11()
Z=rnorm(1000)
hist(Z)
X11()
Z=rnorm(100000)
hist(Z)
# pnorm(Z) vs pnorm(Z, mean=5, sd=1.5)
# Plot 
Z <- seq(3,18,0.1)
dens <- dnorm(Z, mean=10, sd=2)
plot(Z, dens, type="o")

























