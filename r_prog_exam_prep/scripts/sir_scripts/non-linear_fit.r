# non-linear data is fitted with nls() function, by method of least squares.

# we fit a power model.

# We first generate data y = x^3 + gaussian noise

xdat <- seq(1, 3, 0.1)
npoints = length(xdat)
 
ydat <- xdat^3 + rnorm(npoints, 0, 1.0)

df <- data.frame(x = xdat, y = ydat)

s <- seq(1, 3, 0.1)
#lines(s, s^3, lty = 2, col = "green")

dat <- nls(y ~ I(x^power), data=df, start=list(power=1), trace=T)

print(class(dat))

print(summary(dat))

print(summary(dat)$coefficients)

power <- round(summary(dat)$coefficients[1], 3)

power.se <- round(summary(dat)$coefficients[2], 3)



s <- seq(1, 3, 0.1)
plot(ydat ~ xdat, main = "Fitted power model", sub = "Blue: fit; green: known")
lines(s, s^3, lty = 2, col = "green")
lines(s, predict(dat, list(x = s)), lty = 1, col = "blue")

text(1, 20, paste("y =x^ (", power, " +/- ", power.se,")", sep = ""), pos = 4)


