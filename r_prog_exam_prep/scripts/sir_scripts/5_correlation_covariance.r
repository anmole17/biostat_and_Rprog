# Given two vectors, we can get the covarience
xx <- c(1,2,3,4,5,6,7)
yy <- c(11, 23, 32,40, 51, 64, 76)

covarianceValue = cov(xx,yy)

correlationValue = cor(xx,yy)

print(covarianceValue)
print(correlationValue)


