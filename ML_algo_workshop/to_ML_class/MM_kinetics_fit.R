## Fitting MM kinetics (nonlinear) curve using nls function.

dat = read.csv(file="MM_kinetics_data.csv", header=TRUE)

y = dat$y

x = dat$x

res <- nls(y ~ (b1 * x) / (b2 + x), start=list(b1=35, b2=2.0))

print(summary(res))

plot(x,y,col="blue", pch=20, cex=1.3)
lines(x, predict(res), type="l", lwd=2, col="red")



