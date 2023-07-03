## Simple linear regression with lm() and glm() functions of R stat library

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

## define weight
w <- 1/err

## create data frame with xdat, ydat 
## create data frame with x,y point and errors
df = data.frame(x = xdat, y=ydat, err=err)

# --------------------------------------------------------------------------
## linear fit with lm() function
## function call for lm()
data_lm = lm(y~x, data = df, weights = 1/df$err, family="gaussian")

## print summary
print(summary(data_lm))

## to access individual results
## str(data_lm) ## tells str
## print(data_lm$coefficients) --> coefficients
## data_lm$residuals --> residual
## data_lm$fitted.values 

## let lm() plot results
plot(data_lm) ## take residual plot from here

## now we plot results
str_inter = paste("intercept=",round(data_lm$coefficients[[1]],3))
str_slope = paste("slope=",round(data_lm$coefficients[[2]],3))

plot(xdat, ydat, pch=20, col="blue", main="Fitted line for Data")
lines(xdat, data_lm$fitted.values, type="l", lw=2, col="red")
text(4,100, str_inter)
text(4,95, str_slope)

##---------------------------------------------------------------------------
## linear fit with glm()

data_glm = glm(y~x, data = df, weights = 1/df$err, family="gaussian")
summary(data_glm)
str(data_glm)

## residual scatter plot of fitted y vs residuals

plot(data_glm$fitted.values, data_glm$residuals, 
     pch = 20, col = "blue", xlab="Fitted values", ylab="Residuals",
     main="Fitted values vs residual")
arrows(0,0,120,0,lw=2, col="blue", join=T)