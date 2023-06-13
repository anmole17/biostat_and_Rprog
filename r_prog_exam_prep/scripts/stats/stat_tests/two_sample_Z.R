###################################################
## Two sample Z test 
## The null hypothesis is tested at the eqiality of two population means.

## x,y = vector of data samples, which are numbers
## sigma_x, sigma_Y = population standard deviations
## alpha = significance level for testing
## null = string with three possible values "equal", "greater_than_or_equal", "less_than_or_equal" for indicating whether the test is one sided or two sided.

two_sample_Z_test = function(x,y, sigma_x, sigma_y, alpha, null  ){
  
  ## compute sample means
  xbar = mean(x)
  ybar = mean(y)
  
  ## get the sample size
  n = length(x)
  m = length(y)
  
  ## compute the Z statistic
  Z_statistic = (xbar - ybar)/sqrt( (sigma_x^2/n)+(sigma_y^2/m)  )
  
  ## compute the p-value
  pvalue = 1.0
  
  if(Z_statistic >  0)
    pvalue = 1 - pnorm(Z_statistic)
  
  if(Z_statistic < 0)
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
    print("Two sample Z test : ")
    print(paste("sample size = ", n,m))
    
    if( (Z_statistic > Z_critical) | (Z_statistic < -Z_critical) )
    {
      print(paste("Null hypothesis is rejected at the level of significance ", alpha/2))
      print(paste("Population mean of x not equal to the population mean of y "))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
    }
    
    if( (Z_statistic < Z_critical) & (Z_statistic > -Z_critical) )
    {
      print(paste("Null hypothesis is accepted at the level of significance ", alpha/2))
      print(paste("Population mean of x equal to population mean of y "))
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
    print("Two sample Z test : ")
    print(paste("sample sizes = ", n,m))
    
    if( Z_statistic > Z_critical )
    {
      print(paste("Null hypothesis is rejected at the level of significance ", alpha))
      print(paste("Population mean of x greater than population mean of y "))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
    
    if( Z_statistic <= Z_critical )
    {
      print(paste("Null hypothesis is accepted at the level of significance ", alpha))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Population mean of x not greater than population mean of y "))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
  }
  
  
  
  ###### Case 3 : Null hypothesis that the population mean is greater than or equal to a given value.
  
  if(null == "greater_than_or_equal")
  {
    Z_critical = qnorm(1 - alpha)
    
    print("################################################################")
    print("Two sample Z test : ")
    print(paste("sample sizes = ", n,m))
    
    if( Z_statistic < Z_critical )
    {
      print(paste("Null hypothesis is rejected at the level of significance ", alpha))
      print(paste("Population mean of x is less than population mean of y "))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", -round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
    
    if( Z_statistic >= Z_critical )
    {
      print(paste("Null hypothesis is accepted at the level of significance ", alpha))
      print(paste("Population mean of x is not less than population mean of y "))
      print(paste("p value for the test = ", round(pvalue, digits=5)))
      print(paste("Value of Z statistic = ", round(Z_statistic, digits=2)))
      print(paste("Critical value of the test = ", round(Z_critical, digits=2)))
      resultVec = c(round(pvalue, digits=5), round(Z_statistic, digits=2))
      
    }
  }
  
  
  return(resultVec)
  
  
}  ## end of the function


###############------------------------------------------------

## Perform a two sample Z test 
## Use this if the two data sets have more than 30 data points. 
## (For less than 30 data points, use two sample independent t test)

x = c( 258.0, 271.5, 189.1, 216.5, 237.2, 222.0, 231.3, 181.7, 220.0, 179.3, 238.1, 217.7,
       246.2, 241.5, 233.8, 222.3, 199.2, 167.9, 216.2, 240.4, 235.3, 187.0, 233.7, 214.7,
       174.6, 246.3, 185.7, 207.0, 244.3, 237.7, 245.2, 228.3, 201.8, 218.3, 242.7, 213.8,
       231.9, 257.3, 208.4, 250.7, 198.3, 206.7, 259.7, 253.3, 200.3, 196.6, 210.6, 257.6,
       173.5, 267.5, 167.2, 227.1, 172.1, 197.6, 256.9, 203.7, 195.1, 237.4, 210.2, 208.8,
       218.0, 205.1, 241.1, 216.8, 223.6, 191.0, 225.9, 215.1, 233.1, 243.0)


y = c( 221.0, 213.0, 199.3, 211.2, 225.2, 229.1, 253.9, 194.6, 243.0, 221.9, 230.9, 221.1,
       206.7, 217.2, 215.8, 203.0, 234.0, 196.3, 235.8, 234.3, 244.7, 248.8, 200.5, 232.0,
       233.3, 220.6, 289.2, 244.9, 230.8, 182.9, 199.3, 263.2, 220.6, 266.7, 258.0, 243.9,
       178.1, 200.7, 270.2, 224.4, 222.4, 234.6, 296.7, 202.3, 277.9, 204.3, 221.1, 257.0,
       243.4, 239.4, 230.0, 263.5, 241.3, 216.6, 227.9, 230.1, 230.5, 188.6, 289.3, 234.4,
       267.5, 256.0, 246.5, 210.5, 270.6, 295.5, 195.8, 235.3, 245.4, 245.4)




sigma_x = 24.6
sigma_y = 27.8



## alpha value
alpha = 0.05

## call the function. "res" is a vector with p-vlue and Z value for the test.
res = two_sample_Z_test(x, y, sigma_x, sigma_y, alpha, "greater_than_or_equal")

print(res)
