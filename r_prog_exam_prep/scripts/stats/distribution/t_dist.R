##### Using R library functions for the t distribution

#### probability density function
n = 10
df = n-1
t = 2.5

t_density = dt(t,df)
t_density = round(t_density, digits=2)
print(paste("probability density for t = ", t, " and degree of freedom = ", df, " is ", t_density))

### Generating the curve of t distribution probability density

x = seq(-5,5,0.1)

df = 10

string = "P(t,df=10)"

curve(dt(x, df), xlim=c(-5,5), xlab="t", ylab=string, lwd=1.5, cex.lab=1.2, col="blue", main="Students t distribution", font.lab=2)


#### Generating cumulative probability (p-value) above upto a t value in a t distribution

#######  pt(t,df) generates cumulative probability from minus infinity to t
#######  when t is positive, probability above t is 1-pt(t)
#######  when t is negative, probability below -t is pt(t)

df=10

t = 2.6
pvalue = pt(t,df)
pvalue = round(pvalue,3)
print(paste("cumulative probability from t = minus infinity to ", t, "is ", pvalue))

t = -2.6
pvalue = pt(t,df)  
pvalue = round(pvalue,3)
print(paste("cumulative probability from t = minus infinity to ", t, "is ", pvalue))


#### Generating t value for a cumulative probability p
###  The function qt(p,df) returns t value at which cumulative probability is p.

p = 0.95  ## cumulative probabilitu from minus infinity to t.
t = qt(p,df)
t = round(t, digits=3)
print(paste("t value for a cumulative probability p = ", p, "is ", t))


#### Generating random deviates from a t distribution
### rt(m,df) returns a vector of m random deviates from a t of given df

ndev = rt(4, df)
ndev = round(ndev,digits=3)
print("Four random deviates from t distribution with 10 degrees of freedom : ")
print(ndev)

X11()

## plotting the histogram of 10000 random deviates from unit Gaussian:
hist(rt(100000, df), breaks=40, xlim=c(-6,6) , ylim = c(0, 2000), col="purple", main="histogram of t deviates")
