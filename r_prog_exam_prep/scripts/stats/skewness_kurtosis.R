
# include the moments library
library(moments)

## define the data vector

x = c(3.02, 3.97, 3.63, 5.65, 
      5.52, 6.33, 5.40, 4.41, 5.42, 5.70,
      4.36, 4.42, 4.93, 5.60, 3.38, 3.75)

## compute skewness

sk = skewness(x)

ku = kurtosis(x) ## normal kurtosis =3

print(paste("skewness = ", round(sk, digits=3), "  kurtosis=",  round(ku, digits=3)))