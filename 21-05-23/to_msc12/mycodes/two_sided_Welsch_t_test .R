#  A botanist measured the growths of pea stem segments for two groups under different conditions.
# He made 11 observations of group X and 13 observations of group Y to record the following data:
#   X : 0.8, 1.8, 1.0, 0.1, 0.9, 1.7, 1.0, 1.4, 0.9, 1.2, 0.5 (in mm)
# Y : 1.0, 0.8, 1.6, 2.6, 1.3 ,1.1 ,2.4 ,1.8, 2.5, 1.4, 1.9, 2.0, 1.2 (in mm)
# Check if the two groups have significant difference in their growth of stem segments using an
# appropriate statistical test. Use alpha = 0.05 as a significance level. State the null hypothesis and
# alternate hypothesis clearly.
# (Perform Welsch t-test and Wilcoxon rank sum test)

X <-c(0.8, 1.8, 1.0, 0.1, 0.9, 1.7, 1.0, 1.4, 0.9, 1.2, 0.5)
Y <- c(1.0, 0.8, 1.6, 2.6, 1.3 ,1.1 ,2.4 ,1.8, 2.5, 1.4, 1.9, 2.0, 1.2)
alpha <- 0.05
#calc Xbar, ybar , Sx , Sy, n , m , r(degree of freedom)
xbar = mean(X)
ybar = mean(Y)
Sx = sd(X)
Sy =sd(Y)

m = length(Y)
n = length(X)

# compute Welsch degree of freedom
r = (((Sx^2/n)+(Sy^2/m))^2)/(((1/(n-1))*((Sx^2/n)^2))+((1/(m-1))*(Sy^2/m)^2))
r = round (r , digit=2)
print(paste("Degree of freedom(Welsch degree of freedom)", r))
# critical value

tc = qt(1-(alpha/2), r)

## 
pval = pt(t,r)

print(paste("t= ", t))

print(paste("t critical= ", tc))

print(paste("alpha= ", alpha))

print(paste("pvalue= ", pval))

if((t>tc)| (t< -tc)){
  print("Null hypothesis rejected, t is less than or greater than t critical")
}else print("Null accepted")