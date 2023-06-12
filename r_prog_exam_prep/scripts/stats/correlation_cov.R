##################################################
## Compute the covariance and correltion for the following dataset:

x = c(10,20,30,40,50,60,70,80,90,100)

y = c(95, 220, 279, 424, 499, 540, 720, 880, 950, 1200)

cv = cov(x,y)

cr = cor(x,y)

print(paste("covarince = ", round(cv, digits=3)))

print(paste("Pearsons correlection coefficient = ", round(cr, digits=3)))

##############------------------------------------------------
