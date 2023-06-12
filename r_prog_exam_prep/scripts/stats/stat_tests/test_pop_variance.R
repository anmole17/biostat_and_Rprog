##################################################
## Script for testing a single population variance.

## x is the data vector

## test_sigma = value of population vaiance for testing

## alpha = significance level for the test

one_sample_variance_test = function(x, test_sigma, alpha){
  
  ## compute the standard deviation and sample size from the data
  s = sd(x)
  n = length(x)
  
  ## compute chi-square test statistic
  test_statistic = (n-1)*s^2/test_sigma^2
  
  ## Two sided test
  a =  qchisq(alpha/2, n-1)
  
  b =  qchisq(1-alpha/2, n-1)
  
  test_statistic = round(test_statistic, 2)
  a = round(a, 2)
  b = round(b,2)
  
  
  print("Two sided alternate hypothesis : population variance not equal to test value :")
  if( (test_statistic <= a) | (test_statistic >= b) ){
    print("Null hypothesis rejected,  alternative accepted")
    print(paste("chi-square test statistic = ", test_statistic, "  is outside the acceptance region [ ",a, ",", b," ]"))
  } else {
    print("Null hypothesis accepted,  alternative rejected")
    print(paste("chi-square test statistic = ", test_statistic, "  is inside the acceptance region [ ",a, ",", b," ]"))
  }
  
  print("-----------------------------------------------------")
  
  
  
  ##  One sided test :  Alternate hypothesis : population variance > test_variance
  
  
  print("One sided alternate hypothesis : population variance > test value :")
  
  chisq_critical = qchisq(1-alpha,n-1)
  
  chisq_critical = round(chisq_critical, 2)
  
  if(test_statistic > chisq_critical){
    print("Null hypothesis rejected,  alternative accepted")
    print(paste("chi-square test statistic = ", test_statistic, "  is greater than the upper critical value ", chisq_critical))
  } else {
    print("Null hypothesis accepted,  alternative rejected ")
    print(paste("chi-square test statistic = ", test_statistic, "  is less than the upper critical value ",chisq_critical    ))
    
  }
  
  
  
  print("-----------------------------------------")
  
  ##  One sided test :  Alternate hypothesis : population variance < test_variance
  
  
  print("One sided alternate hypothesis : population variance < test value :")
  
  chisq_critical = qchisq(alpha,n-1)
  
  chisq_critical = round(chisq_critical, 2)
  
  if(test_statistic < chisq_critical){
    print("Null hypothesis rejected, alternative accepted")
    print(paste("chi-square test statistic = ", test_statistic, "  is less than the lower critical value ", chisq_critical))
    
    
  } else {
    print("Null hypothesis accepted,  alternative rejected")
    print(paste("chi-square test statistic = ", test_statistic, "  is greater than the lowercritical value ",chisq_critical))
    
  }
  
  
}


### Testing the function "one_sample_variance_test"

## this data set is randomly drawn from a Gaussian of mean=140, sd=20
x = c(142.8, 135.0, 157.5, 148.4, 135.9, 153.4, 149.0, 130.2, 156.0, 189.7, 151.6, 156.5, 123.8, 152.9, 118.4, 145.8)

one_sample_variance_test(x, 29, 0.05)



###############------------------------------------------------