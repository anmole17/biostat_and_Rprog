##  Use lm(), glm() and nls() functions and relations with "family" in glm()  


##  lm()  --> for linear and nonlinear regression of simple functions like polynomial

## nls() ---> for nonlinear regressions

## glm() ---> generalized linear model. Use for logistic regression, exponential and other nonlinear regressions.



## Foloowing example was taken from stackexchange discussion page
##      "https://stats.stackexchange.com/questions/181113/is-there-any-difference-between-lm-and-glm-for-the-gaussian-family-of-glm"

##------------------------------------------------------------------------------

x1=c(56.1, 26.8, 23.9, 46.8, 34.8, 42.1, 22.9, 55.5, 56.1, 46.9, 26.7, 33.9, 
37.0, 57.6, 27.2, 25.7, 37.0, 44.4, 44.7, 67.2, 48.7, 20.4, 45.2, 22.4, 23.2, 
39.9, 51.3, 24.1, 56.3, 58.9, 62.2, 37.7, 36.0, 63.9, 62.5, 44.1, 46.9, 45.4, 
23.7, 36.5, 56.1, 69.6, 40.3, 26.2, 67.1, 33.8, 29.9, 25.7, 40.0, 27.5)

x2=c(12.29, 11.42, 13.59, 8.64, 12.77, 9.9, 13.2, 7.34, 10.67, 18.8, 9.84, 16.72, 
10.32, 13.67, 7.65, 9.44, 14.52, 8.24, 14.14, 17.2, 16.21, 6.01, 14.23, 15.63, 
10.83, 13.39, 10.5, 10.01, 13.56, 11.26, 4.8, 9.59, 11.87, 11, 12.02, 10.9, 9.5, 
10.63, 19.03, 16.71, 15.11, 7.22, 12.6, 15.35, 8.77, 9.81, 9.49, 15.82, 10.94, 6.53)

y = c(1.54, 0.81, 1.39, 1.09, 1.3, 1.16, 0.95, 1.29, 1.35, 1.86, 1.1, 0.96,
1.03, 1.8, 0.7, 0.88, 1.24, 0.94, 1.41, 2.13, 1.63, 0.78, 1.55, 1.5, 0.96, 
1.21, 1.4, 0.66, 1.55, 1.37, 1.19, 0.88, 0.97, 1.56, 1.51, 1.09, 1.23, 1.2, 
1.62, 1.52, 1.64, 1.77, 0.97, 1.12, 1.48, 0.83, 1.06, 1.1, 1.21, 0.75)

## (1)  Following fits the model y ~ N(mu, sigma), where mu=beta0 +beta1*x1 + beta2 * x2 
res1 = lm(y ~ x1 + x2)

## (2) Follwing fits the same model as above, using gml function and Gaussian family call.
res2 = glm(y ~ x1 + x2, family=gaussian(link=identity)) 

## (3) following fits the model y ~ N(mu, sigma), where mu = exp(beta0 + beta1*x1 + beta2*x2) )
res3 = glm(y ~ x1 + x2, family=gaussian(link=log)) 

## (4) Follwing fits the same model as (3),  y ~ N(mu, sigma), where mu = exp(beta0 + beta1*x1 + beta2*x2) )
res4 = nls(y ~ exp(b0+b1*x1+b2*x2), start=list(b0=-1,b1=0.01,b2=0.1))


# (1) & (2) fit same model

# (3) and (4) fit same model


## res = glm( cure ~ med1 + med2, family=binomial(link=logit) )   fits a binomial logistic regression.



