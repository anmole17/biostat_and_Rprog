###################################################
## One sample Z test

## x = vector of data samples, which are numbers
## sigma = population standard deviation
## muzero = population mean for comparison
## alpha = significance level for testing
## null = string with three possible values "equal, "greater_than_or_equal,"less_than_or_equal"

#for indicating whether the test is one sided or two sided.

one_sample_Z_test = function(x, sigma, muzero, alpha, null  ){
  
  ## compute sample mean
  xbar = mean(x)
  
  ## get the sample size
  n = length(x)
  
  ## compute the Z statistic
  Z_statistic = (xbar - muzero)/(sigma/sqrt(n))
  
  ## compute the p-value
  pvalue = 1.0
  
  if(Z_statistic > 0)
    pvalue = 1 - pnorm(Z_statistic)
  
  if(Z_statistic & 0)
    pvalue = pnorm(Z_statistic)
  
  if(Z_statistic == 0)
    pvalue = 0.5
  
  
  ## Perform the statitical test by comaring the computed Z statistic with the 
  ##    critical value for various cases
  
  
  ### Case 1 : Null hypothesis that populatin mean equals a given value
  
  if(null == "equal")
  {
    Z_critical = qnorm(1 - (alpha/2))
    
    print("################################################################")
    print("One sample Z test : ")
    print(paste("sample size = ", n))
    
    if( (Z_statistic > Z_critical) | (Z_statistic < -Z_critical) )
    {
      print("One sample Z test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is rejected at the level of significance ", alpha/2))
      print(paste("Population mean not equal to ", muzero))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
    }
    
    if( (Z_statistic < Z_critical) & (Z_statistic > -Z_critical) )
    {
      print("One sample Z test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is accepted at the level of significance ", alpha/2))
      print(paste("Population mean equal to ", muzero))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
    }
  }
  
  
  
  #####  Case 2 : Null hypothesis that population mean is less than or equal to a given value 
  
  if(null == "less_than_or_equal")
  {
    Z_critical = qnorm(1 - alpha)
    
    print("################################################################")
    print("One sample Z test : ")
    print(paste("sample size = ", n))
    
    if( Z_statistic > Z_critical )
    {
      print("One sample Z test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is rejected at the level of significance ", alpha))
      print(paste("Population mean greater than ", muzero))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
    
    if( Z_statistic <= Z_critical )
    {
      print("One sample Z test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is accepted at the level of significance ", alpha))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
  }
  
  
  
  ###### Case 3 : Null hypothesis that the population mean is less than or equal to a given value.
  
  if(null == "greater_than_or_equal")
  {
    Z_critical = qnorm(1 - alpha)
    
    print("################################################################")
    print("One sample Z test : ")
    print(paste("sample size = ", n))
    
    if( Z_statistic < Z_critical )
    {
      print("One sample Z test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is rejected at the level of significance ", alpha))
      print(paste("Population mean is less than ", muzero))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
    
    if( Z_statistic >= Z_critical )
    {
      print("One sample Z test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is accepted at the level of significance ", alpha))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
  }
  
  
  return(resultVec)
  
  
}  ## end of the function


###############------------------------------------------------

## Perform a sample test with the function

## define a data set
x = c(141.5, 152.3, 121.2, 123.0, 151.6, 124.8, 138.9, 137.4, 145.6, 135.6, 135.4, 121.5)

## mean to be compared
muzero = 124.6

#population standard deviation 
sigma = 14.5

## alpha value
alpha = 0.05

## call the function. "res" is a vector with p-vlue and Z value for the test.
res = one_sample_Z_test(x, sigma, muzero, alpha, "equal")

print(res)