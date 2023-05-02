## demonstrate Central Limit theorem with Gaussian deviates

## Gaussian of mean mu=20, Standard dev. sigma=4
mu<-20
sigma<-4

nsamples<-16

## draw 10000 random deviates from Gaussian and plot histogram
X<-rnorm(10000, mean=mu, sd=sigma)
## hist(X, breaks=40)

## In a for loop, draw n random deviates every time, compute xbar
## fill the vector of xbar. Do this 10000 times, so that we get 
## 10000 xbar values to plot

## create empty vector to store Xbar

Xbar_vec<- c() 

for(i in 1:10000){
	
	X1<-rnorm(nsamples, mean=mu, sd=sigma)
	Xbar<-mean(X1)
	
	Xbar_vec<- c(Xbar_vec, Xbar)

}

#print(Xbar_vec)

## Plot the distribution of X and Xbar to compare

## Split the canvas into two verticalsections
par(mfrow=c(2,1))

# plot the distribution of X
hist (X, breaks=40, xlim=c(5,35))

# plot dist of X bar 
hist(Xbar_vec, breaks=40,xlim=c(5,35))

print(paste("mean(X)= ", mean(X)))
#[1] "mean(X)=  19.9728156735364"

print(paste("sd(X)= ", sd(X)))
#[1] "sd(X)=  4.00968931157085"

print(paste("mean(Xbar_vec)= ", mean(Xbar_vec)))
#[1] "mean(Xbar_vec)=  20.010399683368"

 print(paste("sd(Xbar_vec)= ", sd(Xbar_vec)))
#[1] "sd(Xbar_vec)=  1.00300085740438"


## Z(unit normal) and t statistic distribution

msample<-16
Z_vec<- c()
t_vec<- c() 

mu<-20
sigma<-4


for(i in 1:10000){
	Xc <- rnorm(msample, mean=mu, sd=sigma)
	Xcbar <-mean(Xc)
	s <- sd(Xc)
	## central Limit theorem
	Z =  ((Xcbar-mu)/(sigma/sqrt(msample)))
	
	t =  ((Xcbar-mu)/(s/sqrt(msample)))
	Z_vec<- c(Z_vec, Z)
	t_vec<- c(t_vec, t)
}

## plot Z and t statistic distributions
par(mfrow= c(2,1))

hist(Z_vec)
hist(t_vec)



