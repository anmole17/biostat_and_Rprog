#################################################
## Testing two population proportions with prop.test

## 1.  Using prop.test() functon

## In a health survey, 520 out of 600 men and 550 out of 600 women questioned said they use antibiotics whenever fever
## continues for more than 2 days. We want to test whether there is a significant difference in the fraction of men and women
## who start taking antibotics after 2 days of fever.

x = c(520, 550)  ## favourble response in each category of data

n = c(600, 600)  ## total samples in each category.

res = prop.test(x,n,alternative = "two.sided")

print(res)



#### Perform Fishers exact test for a contingency table.

## We have the following contingency table for patients belonging to two economic strata admitted for throat cancer in
## a hosital. They say whether they indulge in tobacco abuse or not:

##                    Higher-income      Lower-income
##
##  Tobacco abuse        11                17
##
##  No abuse             42                39
##

##We do Fishers exact test to find whether the patients from higher income group indulge in tobacco abuse
## in a significantly different proportion than the patients from lower income group

x = matrix(c(11,42,17,39), ncol=2)

res1 = fisher.test(x,  alternative = "two.sided",
                   conf.int = TRUE, conf.level = 0.95)

print(res1)


###############----