## students t  
## Two sample t test for independent samples of unknown and equal population variances

sdx=10
sdy=15
n=15
m=5
#find Sp
# use sd() and mean()
xbar=25
ybar=34

Sp= sqrt((((n-1)*(sdx)^2)+((m-1)*(sdy)^2))/(n+m/2))

#calculate T

t=(xbar-ybar)/(Sp*sqrt((1/n)+(1/m)))
t
alpha=0.05
df= n+m-2
tc = pt((1-alpha/2), df)
tc

# conf interval 95%
pos= (xbar-ybar)+ (tc*(Sp*sqrt((1/n)+(1/m)))) 
pos
neg= pos= (xbar-ybar)- (tc*(Sp*sqrt((1/n)+(1/m)))) 
neg

## The null hypothesis can be tested for three possibilities:      
# μX−μY=0,    μX−μY>0  and   μX−μY<0. 

## for two sample dependent 
# di = Xi-Yi, dbar =mean(di) 
d_bar=15
mu_d= 13
sd_d=1.3
n=10
t= (d_bar-mu_d)/(sd_d/sqrt(n)) # n-1 df
t
tc = pt((1-alpha/2), n-1 )
tc

conf_interval_p= d_bar+ (tc*(sd_d/sqrt(n)))
conf_interval_p
conf_interval_n=d_bar- (tc*(sd_d/sqrt(n)))
conf_interval_n
