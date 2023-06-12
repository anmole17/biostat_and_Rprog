##################################################
## One sample t test

## x = vector of data samples, which are numbers
## muzero = population mean for comparison
## alpha = significance level for testing
## null = string with three possible values "equal", "greater_than_or_equal", "less_than_or_equal" for indicating whether the test is one sided or two sided.

one_sample_t_test = function(x, muzero, alpha, null  ){
  
  ## compute sample mean
  xbar = mean(x)
  
  ## comput sample standard deviation
  s = sd(x)
  
  
  ## get the sample size
  n = length(x)
  
  ## compute the t statistic
  t_statistic = (xbar - muzero)/(s/sqrt(n))
  
  ## compute the p-value
  pvalue = 1.0
  
  if(t_statistic > 0)
    pvalue = 1 - pt(t_statistic, n-1)
  
  if(t_statistic < 0)
    pvalue = pt(t_statistic, n-1)
  
  if(t_statistic == 0)
    pvalue = 0.5
  
  
  ## Perform the statitical test by comaring the computed t statistic with the 
  ##    critical value for various cases
  
  
  ### Case 1 : Null hypothesis that populatin mean equals a given value
  
  if(null == "equal")
  {
    t_critical = qt(1 - (alpha/2), n-1)
    
    print("################################################################")
    print("One sample t test : ")
    print(paste("sample size = ", n))
    
    if( (t_statistic > t_critical) | (t_statistic < -t_critical) )
    {
      print("One sample t test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is rejected at the level of significance ", alpha/2))
      print(paste("Population mean not equal to ", muzero))
      print(paste("p value for the test = ", pvalue))
      print(paste("Value of t statistic = ", round(t_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(t_critical, digits=2)))
      resultVec = c(pvalue, round(t_statistic, digits=2))
    }
    
    if( (t_statistic < t_critical) & (t_statistic > -t_critical) )
    {
      print("One sample t test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is accepted at the level of significance ", alpha/2))
      print(paste("Population mean equal to ", muzero))
      print(paste("p value for the test = ", pvalue))
      print(paste("Value of t statistic = ", round(t_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(t_critical, digits=2)))
      resultVec = c(pvalue, round(t_statistic, digits=2))
    }
  }
  
  
  
  #####  Case 2 : Null hypothesis that population mean is less than or equal to a given value 
  
  if(null == "less_than_or_equal")
  {
    t_critical = qt(1 - alpha, n-1)
    
    print("################################################################")
    print("One sample t test : ")
    print(paste("sample size = ", n))
    
    if( t_statistic > t_critical )
    {
      print("One sample t test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is rejected at the level of significance ", alpha))
      print(paste("Population mean greater than ", muzero))
      print(paste("p value for the test = ", pvalue))
      print(paste("Value of t statistic = ", round(t_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(t_critical, digits=2)))
      resultVec = c(pvalue, round(t_statistic, digits=2))
      
    }
    
    if( t_statistic <= t_critical )
    {
      print("One sample t test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is accepted at the level of significance ", alpha))
      print(paste("p value for the test = ", pvalue))
      print(paste("Value of t statistic = ", round(t_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(t_critical, digits=2)))
      resultVec = c(pvalue, round(t_statistic, digits=2))
      
    }
  }
  
  
  
  ###### Case 3 : Null hypothesis that the population mean is less than or equal to a given value.
  
  if(null == "greater_than_or_equal")
  {
    t_critical = qt(1 - alpha,n-1)
    
    print("################################################################")
    print("One sample t test : ")
    print(paste("sample size = ", n))
    
    if( t_statistic < t_critical )
    {
      print("One sample t test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is rejected at the level of significance ", alpha))
      print(paste("Population mean is less than ", muzero))
      print(paste("p value for the test = ", pvalue))
      print(paste("Value of t statistic = ", round(t_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(t_critical, digits=2)))
      resultVec = c(pvalue, round(t_statistic, digits=2))
      
    }
    
    if( t_statistic >= t_critical )
    {
      print("One sample t test : ")
      print(paste("sample size = ", n))
      print(paste("Null hypothesis is accepted at the level of significance ", alpha))
      print(paste("p value for the test = ", pvalue))
      print(paste("Value of t statistic = ", round(t_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(t_critical, digits=2)))
      resultVec = c(pvalue, round(t_statistic, digits=2))
      
    }
  }
  
  
  return(resultVec)
  
  
}  ## end of the function


###############------------------------------------------------

## Perform a sample test with the function

## define a data set
x = c(96.0,  104.0,  99.1,  97.6,  99.4,  92.8,  105.6,  97.2,
      96.8,  92.1,  100.6,  101.5,  100.7,  97.3,  99.6,  105.9)

## mean to be compared
muzero = 100

## alpha value
alpha = 0.05

## call the function. "res" is a vector with p-vlue and t value for the test.
res = one_sample_t_test(x, muzero, alpha, "equal")

print(res)
