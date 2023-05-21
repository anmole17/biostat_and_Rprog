# 1. It is claimed that the median weight m of a bag of rice in a load is 40 Kg.
# In order to test this, 13 bags were randomly chosen from the load and their measured weights are given
# below:
#   { 41.2, 39.5, 41.3, 36.8, 38.8, 40.9, 38.9, 34.9, 39.2, 31.7, 40.8, 38.0, 30.9 }
# Using one sample t test, to an significance level of 0.05, test the null hypothesis
# H0: mu=40 against an alternate hypothesis H_A : mu < 40.
# Also, Using the Wilcoxon statistics to test, to an significance level of 0.05, the null hypothesis
# H0: m=40 against an alternate hypothesis HA: m < 40.

X =c(41.2, 39.5, 41.3, 36.8, 38.8, 40.9, 38.9, 34.9, 39.2, 31.7, 40.8, 38.0, 30.9 )

# calc xbar, S ; xbar, S
xbar = mean(X)
S= sd(X)
n=13
mu = 40
alpha = .05
t=(xbar-mu)/(S/sqrt(n))
# tcritical= t 1-alpha (n-1)
tc=qt(1-alpha,n-1)

# compute p value 
pval = pt(t,n-1)

print(paste("pvalue= ", pval))
# if t less than tc , reject null
print(paste("t value= ", t))
print(paste("t critical= ", tc))
if(t< -1*tc){
  print("Null rejected")
  }else print("Null accepted")

  