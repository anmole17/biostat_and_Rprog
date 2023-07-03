df = read.csv("stackloss.csv", header=TRUE)
summary(df)
X11()
par(mfrow = c(2,2))
plot(df$Air.Flow,df$stack.loss,main="stack loss vs air flow")
plot(df$Acid.Conc, df$stack.loss, main="stack loss vs acid conc")
plot(df$Water.Temp,df$stack.loss, main="stack loss vs water temp")

cor(df$Air.Flow,df$Acid.Conc )
cor(df$Air.Flow,df$Water.Temp ) ## 0.7818523 might be correlated
plot(df$Air.Flow,df$Water.Temp, main="Air Flow vs Water Temp")
summary(lm(df$Air.Flow ~ df$Water.Temp, data = df))
cor(df$Acid.Conc,df$Water.Temp )
## Perform mla of y-> stack.loss as func of others
## use lm()
data_lm = lm(df$stack.loss ~ df$Water.Temp + df$Acid.Conc + df$Air.Flow ,
               data = df)
summary(data_lm)
plot(data_lm)

## remove acid.conc
data_lm2 = lm(df$stack.loss ~ df$Water.Temp + df$Air.Flow ,
             data = df)
summary(data_lm)

# residual plot
plot(data_lm)
# ## residual not used in MLA do corr plot with each independent 
# plot(data_lm$fitted.values, data_lm$residuals, 
#      pch = 20, col = "blue", xlab="Fitted values", ylab="Residuals",
#      main="Fitted values vs residual")
# arrows(0,0,50,0,lw=2, col="blue")

## -------------------------------------------------------
## with glm
## data related to battery
data_glm = glm(df$stack.loss ~ df$Water.Temp + df$Acid.Conc + df$Air.Flow ,
               data = df, family="gaussian")
summary(data_glm)
#str(data_glm)
plot(data_glm)

# upon checking the cor(df$Air.Flow,df$Water.Temp ) in 
# the data which was given, it came out to be 0.7818523 ,
# then when followed by lm( df$Air.Flow ~ df$Water.Temp, data=df ),
# it showed that the slope b1 is significant in the t test and
# model is significant in f test.
# Hence, I think the relationship of 
# stack loss(df$stack.loss ~ df$Water.Temp + df$Acid.Conc + df$Air.Flow)
# can be explained only by considering airflow or water temperature
# as they are dependent on each other,
# and as relationship with acid conc. is not significant.
# This can be due to the fact, water temp. affects the evaporation,
# which affects the humidity level which can then affect the air flow. 
print("------------------------------------------------------")
## predict 
newdata = data.frame( Air.Flow = 72, Water.Temp = 20, Acid.Conc = 85)
pr=predict(data_glm, newdata )

print("For the value of Air.Flow = 72, Water.Temp = 20, Acid.Conc = 85
      the calue of stack.loss from MLR is:")
print(as.numeric(pr))
## confidence interval 
confint =predict(data_lm, newdata, interval= T, level=0.05)
