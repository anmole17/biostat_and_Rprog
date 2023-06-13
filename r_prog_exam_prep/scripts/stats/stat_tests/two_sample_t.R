## R script using t.test() library function for various t tests

##-------------------------  Test-1 --------------------------------------------

### Two sample t-test between two independent variables with unequal population variances
###  This is "Welsch t-test"

##we set a confidence level of 0.95

# data sets
Xvar=c(4.95,5.37,4.70,4.96,4.72,5.17,5.28,5.12,5.26,5.48)

Yvar=c(4.65,4.86,4.57,4.56,4.96,4.63,5.04,4.92,5.37,4.58,4.26,4.40)

## The test is for a null hypothesis of equality of means. Alternate says that the means are unequal. Hence this is a two sided alternatie hypothesis.
## The difference between two population means is zero.  

## call to the t.test() function
res = t.test(x=Xvar, y=Yvar, alternative="two.sided", var.equal=FALSE, paired=FALSE, conf.level=0.95)

## Print the result summary
print(res)


## Note : To perform a two smple independent t test with equality of variance, set "var.equal=TRUE" in the above function call


print("------------------------------------------")



##-----------------------------  Test-2 -----------------------------------------

## Two sample t-test with dependent variables (paired t-test) 

data_before = c(95,106,79,71,90,79,71,77,103,103,92,63,82,76)

data_after = c(97,116,82,81,82,86,107,86,94,91,85,98,91,87)

## we test the null hypothesis that the population means of 2 variables are equal
##  to a significance level of 0.95

## call to the t.test() function
res = t.test(x=data_before, y=data_after, alternative="two.sided", paired=TRUE, conf.level=0.95)

print(res)
## 