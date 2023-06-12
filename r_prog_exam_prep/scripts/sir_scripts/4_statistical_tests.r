## one sample t-test

X = c(41.2, 39.5, 41.3, 36.8, 38.8, 40.9, 38.9, 34.9, 39.2, 31.7, 40.8, 38.0, 30.9)

res = t.test(x, mu=40, alternative="less", conf.level=0.95)

print(res)


##One sample  Wlcoxon signed rank test for the above data
res = wilcox.test(x, mu=40, alternative="less",  conf.level=0.95)
print(res)




##  Two sample tests

## two sample independent t-test (Welsch test)

X = c(0.8, 1.8, 1.0, 0.1, 0.9, 1.7, 1.0, 1.4, 0.9, 1.2, 0.5)

Y = c(1.0, 0.8, 1.6, 2.6, 1.3 ,1.1 ,2.4 ,1.8, 2.5, 1.4, 1.9, 2.0, 1.2)

res = t.test(X,Y, alternative = "two.sided", paired = FALSE, var.equal=FALSE,
	      conf.level=0.95)

print(res)


## two sample idependent Wicoxon test

res = wilcox.test(X,Y, alternative="two.sided", paired=FALSE,conf.level=0.95)

print(res)



## One factor ANOVA
##analysis of oneway anova in R

## read data into a frame called "dat"
dat = read.table("cholesterol_anova_data.txt", header=TRUE)

## compute and print the mean values of groups
print( mean(dat$value[dat$group=="g1"]) )
print( mean(dat$value[dat$group=="g2"]) )
print( mean(dat$value[dat$group=="g3"]) )
print( mean(dat$value[dat$group=="g4"]) )

## box plot to compare the data sets
boxplot(dat$value ~ dat$group, col="red")

# one way anova test. Default assumption is variances not equal.
oneway.test(dat$value~dat$group)

# To make variences equal, set parameter
oneway.test(dat$value~dat$group, var.equal=TRUE)

# Run anov function
aov.out = aov(count ~ spray, data=InsectSprays)
summary(aov.out)









