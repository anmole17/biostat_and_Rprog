##### Using R library functions for the F distribution

#### probability density function
n1 = 10
n2 = 12
r1 = n1-1
r2 = n2-2
F = 2.5

F_density = df(F, r1, r2)
F_density = round(F_density, digits=2)
print(paste("probability density for F = ", F, " and degree of freedom = ", r1," and ", r2, " is ", F_density))

### Generating the curve of F distribution probability density

x = seq(0,5,0.1)

r1 = 10
r2 = 12

string = "P(F,r1=10, r2=12)"

curve(df(x, r1, r2), xlim=c(0,4), xlab="F", ylab=string, lwd=1.5, cex.lab=1.2, col="blue", main="F distribution", font.lab=2)


#### Generating cumulative probability (p-value) above upto a F value in a F distribution

#######  pf(F, r1, r2) generates cumulative probability from 0 to given F value.
#######  The probability of having a value above F is 1 - pf(F, r1, r2)

r1 = 10
r2 = 12

F = 2.8
pvalue = pf(F, r1, r2)
pvalue = round(pvalue,3)
print(paste("cumulative probability from F = 0 to ", F, "is ", pvalue))


#### Generating F value for which the cumulative probability from 0 to F is p.
###  The function qf(p,r1, r2) returns F value at which cumulative probability is p.

p = 0.95  ## cumulative probabilitu from 0 to F.
F = qf(p, r1, r2)
F = round(F, digits=3)
print(paste("F value for a cumulative probability p = ", p, "is ", F))


#### Generating random deviates from a t distribution
### rf(m, f1, f2) returns a vector of m random deviates from a F of given F(r1,r2)

r1 = 10
r2 = 12
ndev = rf(4, r1, r2)
ndev = round(ndev,digits=3)
print("Four random deviates from F distribution with (10, 12) degrees of freedom : ")
print(ndev)

X11()

## plotting the histogram of 100000 random deviates from unit Gaussian:
r1 = 10
r2 = 12
hist(rf(100000, r1, r2), breaks=60, xlim = c(0,10), ylim = c(0, 40000), col="purple", main="histogram of F deviates")
