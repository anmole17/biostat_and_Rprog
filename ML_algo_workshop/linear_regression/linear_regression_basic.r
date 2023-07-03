## Simple linear regression basic formulae 

## Data Vectors
## If no errors, make all elements of error vector 1.0

xdat <- c(1,2,3,4,5,6,7,8,9,10)

ydat <- c(16.5, 35.5,27.3,45.8,57.9,79.0,73.4,89.0,107.0,97.9)

n = length(xdat)
p=1
##error = c(1.0,1.0,1.0,1.0, 1.0,1.0,1.0,1.0,1.0,1.0,1.0) ## all errors equal

err = c(0.9,2.1,1.7,3.1,3.9,5.0,4.9,5.6,4.9,4.8)

alpha = 0.05
## To check whether all errors equal

err.equal = ""

if(length(unique(err)) == 1){
  err.equal = T
} else{
  err.equal = F}

##plot(xdat,ydat, ylim=c(0,100))

## 1. compute coeff
## define weight
w <- 1/err

delta <- (sum(w^2)*(sum(xdat^2*w^2))) - sum(xdat*w^2)^2
b0 <- (1/delta)*((sum(ydat*w^2)*sum(xdat^2*w^2))-(sum(xdat*w^2)*sum(xdat*ydat*w^2)))
b1 <- (1/delta)*((sum(w^2)*sum(xdat*ydat*w^2))-(sum(xdat*w^2)*sum(ydat*w^2)))

print(paste(" intercept b0 =", round(b0,3) ))

print(paste(" slope b1 =", round(b1,3) ))
## 2.  fitted points 

ycap <- b0 +(b1*xdat)
print("Fitted points")
print(ycap)
## create data frame with x,y point and errors
df = data.frame(x = xdat, y=ydat, err=err)

X11()

## plot original data points with error
plot(xdat,ydat, col ="red" )
lines(xdat,ycap, col = "blue")
## draw error bars on individual data points
arrows(xdat, ydat-err, xdat, ydat+err, length=0.05, angle=90, code=3)



## 3. Residual 

residual<- ydat - ycap
print(paste("Residual e= "))
print(residual)
X11()
plot( residual,ycap, main= "Residual Plot: residual vs Fitted values")

## 4. SST ,SSR, SSE
ybar=mean(ydat)
SST <- sum((ydat-ybar)^2)
print(paste("SST = " , SST))

SSR <- sum((ycap - ybar)^2)

print(paste("SSR = " , SSR))

SSE <- sum((ydat - ycap)^2)

print(paste("SSE = " , SSE))

print(paste("SST(",round(SST,3),") = approx SSR(",round(SSR,3),
            ") + SSE(",round(SSE,3),
            ")","=>", round(SSR+SSE, 3) ))

## 5.  r^2

r_sq= 1-(SSE/SST)
print(paste("r^2=",round(r_sq,3)))


## 6. Corr coef --> pearson

xbar= mean(xdat)
# Sx = sd(xdat)
# Sy= sd(ydat)
# rpear <- (1/(n-1)) * sum( ((xdat-xbar)^2 * (ydat-ybar)^2))/(Sx*Sy)  
rpear<-cor(xdat,ydat)
print(paste("Pearson corr coeff = ", rpear))
cor(ycap,ydat)
rpear^2 # == r_sq
r_sq

## 7.  t- test

## Std.  error of b0  and b1

SE_b0 <- sqrt(SSE/(n-2)) * 
                sqrt((1/n)+((xbar^2)/sum((xdat-xbar)^2)))


SE_b1 <- (sqrt(SSE/(n-2))) / (sqrt(sum((xdat-xbar)^2)))


# 7 A: test on b1


t_b1 = b1/SE_b1

CI_b1 = c((b1-qt(1-(alpha/2), n-2) * SE_b1), (b1+qt(1-(alpha/2), n-2) * SE_b1))

print(paste("The CI interval of B1 with alpha 0.05 is: (", CI_b1[1], ",",CI_b1[2],")"))

if((CI_b1[1]>0 & CI_b1[2]>0) || (CI_b1[1]<0 & CI_b1[2]<0)){
  
  print("  0 is not within the interval;  Null H0: B1 = 0 rejected")
}else{
  
  print("  0 is within the interval;  Null H0: B1 = 0 accepted")
  
}

p_value_b1 = 1-pt(t_b1, n-2)

if(p_value_b1<= (alpha/2)){
  
  print(paste("p-value= ", p_value_b1, " is less than alpha/2 (", alpha/2,")  Null H0: B1 = 0 rejected"))
  
}else{
  print(paste("p-value= ", p_value_b1, " is more than alpha/2 (", alpha/2,")  Null H0: B1 = 0 accepted"))
  
}

# 7 B: test on b0

t_b0 = b1/SE_b0

CI_b0 = c((b0-qt(1-(alpha/2), n-2) * SE_b0), (b0+qt(1-(alpha/2), n-2) * SE_b0))

print(paste("The CI interval of B0 with alpha 0.05 is: (", CI_b0[1], ",",CI_b0[2],")"))

if((CI_b0[1]>0 & CI_b0[2]>0) || (CI_b0[1]<0 & CI_b0[2]<0)){
  
  print("  0 is not within the interval;  Null H0: B0 = 0 rejected")
}else{
  
  print("  0 is within the interval;  Null H0: B0 = 0 accepted")
  
}

p_value_b0 = 1-pt(t_b0, n-2)

if(p_value_b0<= (alpha/2)){
  
  print(paste("p-value= ", p_value_b0, " is less than alpha/2 (", alpha/2,")  Null H0: B0 = 0 rejected"))
  
}else{
  print(paste("p-value= ", p_value_b0, " is more than alpha/2 (", alpha/2,")  Null H0: B0 = 0 accepted"))
  
}


## 8. f test 
df_SSR = p
df_SSE = n-p-1
f_val= (SSR/df_SSR)/(SSE/df_SSE)

f_crit = qf(1-alpha, p, n-p-1)

if(f_val>=f_crit){
  print(paste("f-value= ", f_val, " is more than f crit (", f_crit, ")  Null H0: B0=B1=0 rejected"))
  
}else{
  print(paste("f-value= ", f_val, " is less than f crit (", f_crit, ")  Null H0: B0=B1=0 accepted"))
  
}
  
