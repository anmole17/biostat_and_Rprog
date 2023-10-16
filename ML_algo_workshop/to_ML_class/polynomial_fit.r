## fittng a data to polynomial

dat = read.csv(file="polynomial_data.csv", header=TRUE)

xdat = dat$xdat

ydat = dat$ydat

error = dat$err


mod <- lm(ydat ~ poly(xdat, 2), data = dat, weights=1/error)

print(summary(mod))

y_fitted = mod$fitted.values




plot(xdat, ydat, col="blue", pch=20, main="exponential fit")
arrows(xdat, ydat+error, xdat, ydat-error, angle=90, code=3, length=0.06, col="blue")
lines(xdat, y_fitted, type="l", lw=2, col="red")


