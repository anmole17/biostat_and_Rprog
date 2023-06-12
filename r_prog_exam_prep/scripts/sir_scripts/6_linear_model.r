# lm is used to fit linear models

xdat <- c(1,2,3,4,5,6,7,8,9,10)

#ydat <- c(15, 25, 35, 45, 55, 65, 75, 85, 95, 105)
ydat <- c(16.5, 23.3, 35.5, 45.8, 57.9, 68.0, 73.4, 89.0, 97.9, 107.0)
df <- data.frame(x=xdat, y=ydat)

dat <- lm(y~x, df)

dat
# In the above formuls, use y~x-1 if you don't want intercept

# intercept
print(dat$coefficients[1])

# slope
print(dat$coefficients[2])

#fitted values
print(dat$fitted.values)

plot(xdat,ydat, col="red")
lines(xdat, dat$fitted.values, col="blue")
# text(1, 20, paste("y =x^ (", power, " +/- ", power.se,")", sep = ""), pos = 4)




