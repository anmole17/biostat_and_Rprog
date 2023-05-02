# To get the distribution of difference in two sample mean

muX<- 20
muY<- 25
sigX<- 2.0
sigY<- 2.2
n<-16
m<-16
diff<-c()

for(i in 1:10000){
X<- rnorm(n,mean=muX, sd=sigX)
Y<- rnorm(m,mean=muY, sd=sigY)
difference<- (mean(X)- mean(Y))

diff<-c(diff,difference)

}

hist(diff, breaks=40)

print(paste("mean(Xbar - Ybar)= ", mean(diff)))

print(paste("sd(Xbar - Ybar)= ", sd(diff)))

print(paste("mu X - mu Y =", (muX-muY)))

print(paste("sd by formula =", (sqrt((sigX^2/n)+(sigY^2/m)))))

# [1] "mean(Xbar - Ybar)=  -5.01425191954622"
# [1] "sd(Xbar - Ybar)=  0.740633209685226"
# [1] "mu X- mu Y  -5"
# [1] "sd by formula  0.743303437365925"
