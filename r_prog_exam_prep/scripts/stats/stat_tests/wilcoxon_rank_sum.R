
## Wilcoxon rank sum test test for two independent  variables

## Note : If there are ties, exact confidence interval cannot be clculatedby this method.


## we test a null that the two distributions are equal with an alternative that placebo is smaller than the drug
##   (ie., pain due to drug has reduced with when compared to placebio)

drug = c(31.7,75.0,101.1,60.5,62.8,59.3,58.9,91.3,99.1,52.0,39.1)

placebo = c(59.3,72.7,100.5,64.7,69.0,72.7,69.6,97.4,100.6,65.1,65.7)

res = wilcox.test(drug,placebo, conf.level=0.95, alternative=c("greater"), conf.int=TRUE )

print(res)