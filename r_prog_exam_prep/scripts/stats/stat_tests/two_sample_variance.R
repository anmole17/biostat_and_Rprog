
##################################################
## Script for testing the ratio of two population variances.

## x and y are the data vectors

## alpha = significance level for the test

two_sample_variance_test = function(x, y, alpha){
  
  ## compute the standard deviation and sample size from the data
  sx = sd(x)
  sy = sd(y)
  n = length(x)
  m = length(y)
  
  
  ## Two sided test : Alternative hypothesis : population variances are not equal. 
  print("Two sided alternate hypothesis : population variances are not equal :")
  print("   ")
  variance_ratio = sx^2/sy^2
  F_critical = qf(1-alpha/2, n-1, m-1)
  
  if( variance_ratio >= F_critical){
    print("Null hypothesis rejected,  alternative accepted")
    print(paste("var_x/var_y = ", variance_ratio, "  is greater than or equal to F_critical value " ,F_critical))
  } else {
    print("Null hypothesis accepted,  alternative rejected")
    print(paste("var_x/var_y = ", variance_ratio, "  is less than F_critical value ", F_critical))
  }
  
  print("-----------------------------------------------------")
  
  
  
  ##  One sided test :  Alternate hypothesis : population variance of x > population variance of y
  
  
  print("One sided alternate hypothesis : population variance of x > population variance of y :")
  print("  ")
  
  variance_ratio = sx^2/sy^2
  F_critical = qf(1-alpha, n-1, m-1)
  
  variance_ratio = round(variance_ratio,2)
  F_critical = round(F_critical,2)
  
  if( variance_ratio >= F_critical){
    print("Null hypothesis rejected,  alternative accepted")
    print(paste("var_x/var_y = ", variance_ratio, "  is greater than or equal to F_critical value ", F_critical))
  } else {
    print("Null hypothesis accepted,  alternative rejected")
    print(paste("var_x/var_y = ", variance_ratio, "  is less than F_critical value ", F_critical))
  }
  
  
  print("-----------------------------------------------------")
  
  
  ##  One sided test :  Alternate hypothesis : population variance of x < population variance of y
  
  
  print("One sided alternate hypothesis : population variance of x < population variance of y :")
  print("  ")
  
  variance_ratio = sy^2/sx^2
  F_critical = qf(1-alpha, m-1, n-1)  ## note that m-1 and n-1 have been swapped in position.
  
  variance_ratio = round(variance_ratio,2)
  F_critical = round(F_critical,2)
  
  
  if( variance_ratio >= F_critical){
    print("Null hypothesis rejected,  alternative accepted")
    print(paste("var_y/var_x = ", variance_ratio, "  is greater than or equal to F_critical value ", F_critical))
  } else {
    print("Null hypothesis accepted,  alternative rejected")
    print(paste("var_y/var_x = ", variance_ratio, "  is less than F_critical value ", F_critical))
  }
  
  print("-----------------------------------------")
  
  return(1)
  
}




### Testing 



x = c(1067.7, 984.3,998.8,1025.9,1060.9,959.1,1013.8,1047.0,987.8,1051.0,885.2,
      1049.5,1098.2,1001.5,1011.1,991.6)

y = c(957.6,  981.8, 1096.5,  984.4, 1074.3,  929.4, 1056.0, 1012.3, 1040.7, 1099.5,
      1006.1, 1064.3,  865.6,  944.4, 1091.8,  952.1)


two_sample_variance_test(x, y, 0.05)