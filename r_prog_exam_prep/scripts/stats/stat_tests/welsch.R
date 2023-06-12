# To get the distribution of difference in two sample mean ---  Welsch

muX<- 20
muY<- 24
sigX<- 2.0
sigY<- 3.0
n<-16
m<-118
diff<-c()
Sx_vec<-c()
Sy_vec<-c()
for(i in 1:10000){
X<- rnorm(n,mean=muX, sd=sigX)
Y<- rnorm(m,mean=muY, sd=sigY)
Sx<-sd(X)
Sy<-sd(Y)
Sx_vec<-c(Sx_vec,Sx)
Sy_vec<-c(Sy_vec,Sy)
difference<- (mean(X)- mean(Y))

diff<-c(diff,difference)

}

hist(diff, breaks=40)
Sx_mean<- mean(Sx_vec)
Sy_mean<- mean(Sy_vec)

print(paste("mean(Xbar - Ybar)= ", mean(diff)))

print(paste("sd(Xbar - Ybar)= ", sd(diff)))

print(paste("mu X - mu Y =", (muX-muY)))

print(paste("sd by formula =", (sqrt((Sx_mean^2/n)+(Sy_mean^2/m)))))

# [1] "mean(Xbar - Ybar)=  -3.99930301876624"
# [1] "sd(Xbar - Ybar)=  0.570267097476935"
# [1] "mu X - mu Y = -4"
# [1] "sd by formula = 0.562344881977498"
