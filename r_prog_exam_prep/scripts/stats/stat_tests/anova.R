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