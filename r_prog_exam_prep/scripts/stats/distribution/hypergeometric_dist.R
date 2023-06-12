
###-------------------------------------------------------------------------------
### R functions for hypergeometric distributions.

## N = total number of events in the population
## N1 = number of successes in the population
## N-N1 = number of failures in the population
## p = probability of success in the population
## n = number of events randomly drawn from population
## x = number of successes out of n random draws

N = 100
N1 = 70
p = 0.3
n = 12
x = seq(0,12)

## Computing hypergeometric probability density
y = dhyper(x,N1,N-N1, n)
plot(x,y,type="h", col="red", lwd=2, xlab="x (Number of success observed)", ylab="P(x,N1,N-N1,n)", font.lab=2, main="Hypergeometric probability distribution")
text(3, 0.24, "N=100, N1=70, p=0.3, n=12", col="blue")


## Computing the cumulative probability upto a given value of x from x=0
x=10
pcum = phyper(x,N1,N-N1,n)
print(paste("cumulative probability upto x=10 is ",round(pcum,digits=3)))


## getting x value corresponding to a cumulative probability p
p = 0.9
q = qhyper(p,N1,N-N1,n)
print(paste("x value for a cumulative probability of 0.25 is :  ",round(q)))


### generating random deviates from hypergeometric distribution 
randev = rhyper(5, N1, N-N1, n)
print( "random deviates from hypergeometric distribution : ")
print(round(randev,digits=2))