## R Script for computing statistical parameters and draw Box-Whisker plot

## Read the data table into data frame
dat = read.csv(file="white_wine_data.csv", header=TRUE)

## Check the data
print(dim(dat))
print(colnames(dat))


## compute the mean and standard deviation for a column
print(mean(dat$fixed.acidity))
print(sd(dat$fixed.acidity))
print(median(dat$total.sulfur.dioxide))

## Compute the quartiles and data summary of a data vector
print(summary(dat$alcohol))

## extract individual parameters
su = summary(dat$density) 

min = su[[1]]
first_quartile =  su[[2]]
median = su[[3]]
mean = su[[4]]
third_quartile = su[[5]]
max = su[[6]]


## Compute skeness and kurtosis using the library "moments"

## try "install.packages("moments") in R
library("moments")

print(skewness(dat$free.suphur.dioxide))

print(kurtosis(dat$free.sulfur.dioxide))


## Plot the Bix-whisker plot
# We call boxplot with single vector.  range=0.0 causes the whiskers to extend upto extreme points.

## Box plot of one vector
boxplot(dat$pH, xlab="Spread of pH of wines", ylab = "pH Value" )

## boxplot of many vectors
boxplot(dat$total.sulfur.dioxide[1:1000], dat$total.sulfur.dioxide[1001:2000], dat$total.sulfur.dioxide[2001:3000], names=c("Sample1","Sample2","Sample3"), ylab="Total sulfur dioxide in wine samples", font.lab=2)


## boxplot with proprties
boxplot(dat$total.sulfur.dioxide, range=0.0, horizontal=FALSE, varwidth=TRUE, notch=FALSE,
 outline=TRUE, boxwex=0.3, border=c("blue"), col=c("red"), xlab="Gene-A", ylab="Expression Level")



