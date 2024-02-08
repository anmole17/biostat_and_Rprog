## Model logistic regression analysis

dat = read.csv(file="./logistic_regression/white_wine_data.csv", header=TRUE)


## Take a subset of data
subdat=dat    ## all the 4898 rows included
#subdat = dat[1:2000,] ## only 2000 rows included
#subdat = dat[1:1000,] ## only 1000 rows included
#lsubdat = dat[1:200,] ## only 200 rows included


## convert the binary values of wine_quality to good=1, bad=0
wine_quality_num =  rep(0, nrow(subdat))


for( i in 1:length(subdat$wine_quality)){
  if(subdat$wine_quality[i] == "good"){ 
    wine_quality_num[i] = 1
  }

  if(subdat$wine_quality[i] == "bad"){
    wine_quality_num[i] = 0
  }

}

subdat = data.frame(subdat, wine_quality_num)


 ## Performing Logistic regression


## bad fit when all columns are retained.
# glm.fit <- glm(wine_quality_num ~ fixed.acidity + citric.acid + 
#                  residual.sugar + chlorides + free.sulfur.dioxide + total.sulfur.dioxide +
#                  density + pH + sulphates + alcohol + quality,  data = subdat, family = binomial)

##  removed the "quality" column. Good fit
glm.fit <- glm(wine_quality_num ~ fixed.acidity + citric.acid + residual.sugar 
               + chlorides + free.sulfur.dioxide + total.sulfur.dioxide + density 
               + pH + sulphates + alcohol,  data = subdat, family = binomial)

## removed "chlorides", in addition to "quality", since p-value for chlorides was high in the above fit
glm.fit <- glm(wine_quality_num ~ fixed.acidity + citric.acid + residual.sugar +
                 free.sulfur.dioxide + total.sulfur.dioxide + density + pH +
                 sulphates + alcohol,  data = subdat, family = binomial)

#glm.fit <- glm(wine_quality_num ~ fixed.acidity + citric.acid + residual.sugar + free.sulfur.dioxide + total.sulfur.dioxide + density + pH + sulphates + alcohol,  data = subdat, family = binomial)
glm.fit <- glm(wine_quality_num ~ residual.sugar + free.sulfur.dioxide + 
                 total.sulfur.dioxide + density + pH + sulphates + alcohol,  data = subdat, family = binomial)

# remove alcohol 
glm.fit <- glm(wine_quality_num ~ fixed.acidity + citric.acid + residual.sugar +
                 free.sulfur.dioxide + total.sulfur.dioxide + density + pH +
                 sulphates ,  data = subdat, family = binomial)
glm.fit <- glm(wine_quality_num ~ residual.sugar + pH +
                 alcohol ,  data = subdat, family = binomial)

# glm.fit <- glm(wine_quality_num ~  residual.sugar +
#                  free.sulfur.dioxide + total.sulfur.dioxide + density + pH +
#                  sulphates + alcohol,  data = subdat, family = binomial)


print(summary(glm.fit))


## other results
#confint(glm.fit) # 95% CI for the coefficients
#exp(coef(glm.fit)) # exponentiated coefficients
#exp(confint(glm.fit)) # 95% CI for exponentiated coefficients
#predict(glm.fit, type="response") # predicted values
#residuals(glm.fit, type="deviance") # residuals


##---------------------------------------------------------------------------

### Computing the fitted values and the probability og Y=1 given a set of X values

## exponent = b0 + b1*X1 + b2*X2 + ....+ bp*Xp
 Yex = rep(0, nrow(subdat))

## Probability that Y=1 for a given data points X.
 P = rep(0, nrow(subdat))


 Yex =  glm.fit$coefficients[1] + glm.fit$coefficients[2]*subdat$fixed.acidity + glm.fit$coefficients[3]*subdat$citric.acid + glm.fit$coefficients[4]*subdat$residual.sugar +  glm.fit$coefficients[5]*subdat$free.sulfur.dioxide + glm.fit$coefficients[6]*subdat$total.sulfur.dioxide + glm.fit$coefficients[7]*subdat$density + glm.fit$coefficients[8]*subdat$pH +  glm.fit$coefficients[9]*subdat$sulphates + glm.fit$coefficients[10]*subdat$alcohol
 
 #Yex =  glm.fit$coefficients[1] +  glm.fit$coefficients[2]*subdat$residual.sugar +  glm.fit$coefficients[3]*subdat$free.sulfur.dioxide + glm.fit$coefficients[4]*subdat$total.sulfur.dioxide + glm.fit$coefficients[5]*subdat$density + glm.fit$coefficients[6]*subdat$pH +  glm.fit$coefficients[7]*subdat$sulphates + glm.fit$coefficients[8]*subdat$alcohol
 
 # Yex =  glm.fit$coefficients[1] + glm.fit$coefficients[2]*subdat$fixed.acidity +
 #   glm.fit$coefficients[3]*subdat$citric.acid + glm.fit$coefficients[4]*subdat$residual.sugar +
 #   glm.fit$coefficients[5]*subdat$free.sulfur.dioxide + 
 #   glm.fit$coefficients[6]*subdat$total.sulfur.dioxide + 
 #   glm.fit$coefficients[7]*subdat$density + glm.fit$coefficients[8]*subdat$pH + 
 #   glm.fit$coefficients[9]*subdat$sulphates 
 
 # Yex =  glm.fit$coefficients[1] + glm.fit$coefficients[2]*subdat$residual.sugar +
 #   glm.fit$coefficients[3]*subdat$pH +glm.fit$coefficients[4]*subdat$alcohol
 
 # Yex =  glm.fit$coefficients[1] + #glm.fit$coefficients[2]*subdat$fixed.acidity +
 #   #glm.fit$coefficients[3]*subdat$citric.acid + 
 #   glm.fit$coefficients[2]*subdat$residual.sugar +
 #   glm.fit$coefficients[3]*subdat$free.sulfur.dioxide + 
 #   glm.fit$coefficients[4]*subdat$total.sulfur.dioxide + 
 #   glm.fit$coefficients[5]*subdat$density + glm.fit$coefficients[6]*subdat$pH + 
 #   glm.fit$coefficients[7]*subdat$sulphates 
 
 ## same result, easily using the function
Yex = predict(glm.fit)

P = exp(Yex)/(1 + exp(Yex))
## same probabilities, using predict function with type=response
P = predict(glm.fit, type="response")


## Write the results and original data into a data frame:

df = data.frame(subdat, P)

write.csv(df, file="./logistic_regression/fitted_data.csv", row.names=FALSE)

##---------------------------------------------------------------------





	       
	   




