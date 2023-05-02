## t-distribution in R

## 1. ot(t,n-1) for a given t-value, returns cumulative probability
## from -Inf to t

t<-1.9
n<-12

pvalue<-pt(t,n-1)
print(pvalue)
# [1] 0.9580248

##2. qt(pvalue,n-1) returns the t-value fot given 
#	p value and a t(n-1)

n=12
pvalue=0.958
tvalue<- qt(pvalue,n-1)
print(tvalue)
#[1] 1.899651

## get probabilit density

n=12
t=1.6
pdens =dt(t,n-1)
print(pdens)
# 0.1111736
#draw the t-curve

t=seq(-4,4,0.1)
y=dt(t,n-1)
plot(t,y, col="red", type="o") 


## plot of histogram of t
n<-12
t<-rt(1,n-1) ## gets value from the t-distribution for n-1
print(t)

t<-rt(10000, n-1)
hist(t, breaks=50, col="blue")

















