
#  Chi-square goodness of fit test:

Observed = c(32, 82, 77, 49)

Expected = c(40,80,80,40)

alpha = 0.05

n = length(Observed)-1

chisquare = sum( (Observed - Expected)^2/Expected )

b = qchisq(1-alpha, n-1)

if(chisquare > b){
  print("Null rejected :")
  
  print(paste("critical value = ", b,"  chi-square statistic = ", chisquare)) 
  
} else {
  
  print("Null accepted :")
  
  print(paste("critical value = ", b,"  chi-square statistic = ", chisquare)) 
}

pvalue = pchisq(chisquare, n-1)

print(paste("p-value for test = ", round(pvalue,4)))