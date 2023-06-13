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


# ## hypothesis testing
# Two sample t test for independent samples of unknown and unequal 
# population variances - The Welsch t test


sdx=10
sdy=15
n=15
m=5
#find r
# use sd() and mean()
xbar=25
ybar=34
r= ((sdx^2/n)+(sdy^2/m))^2/(((1/(n-1))*(sdx^2/n)^2)+
                              ((1/(m-1))*(sdy^2/m)^2))



r=round(r) ## round up
r
#calculate T

t=(xbar-ybar)/((sqrt((sdx^2/n)+(sdy^2/m))))
t
## follows t(r)
alpha=0.05
tc = pt((1-alpha/2), r)
tc

# conf interval 95%
pos= (xbar-ybar)+ (tc*((sqrt((sdx^2/n)+(sdy^2/m))))) 
pos
neg= (xbar-ybar)- (tc*((sqrt((sdx^2/n)+(sdy^2/m))))) 
neg


