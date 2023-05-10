# Question 8 Pract Assignment 1:
# 8. Expression levels of a gene is measured in a particular experiment. A random sample of 15
# experiments gave the following result:
exp_lvl <- c(95,90,99,98,88,86,92,95,95,87,88,89,87,87,87)
# Assuming the experimental measurement of gene expression follows a normal distribution, find a
# 95% confidance interval for the population mean expression level.
# Print the mean, standard deviation and confidence interval.
n <- length(exp_lvl)
mean_exp <- mean(exp_lvl)
Sdev <- sd(exp_lvl)

# given Conf interval of 95% :
alpha <- 0.05
confidence_lvl <- 1-(alpha/2)
# sigma of parent distribution is unknown : we will use t-distribution exp_lvl -> t(n-1)
conf_interval <- qt(confidence_lvl, n-1) * Sdev/sqrt(n)

print(paste("The data of the gene expression lvl:"))
print(exp_lvl)
print(paste("The mean of the data: ",mean,"\nStandard Deviation: ", sd, 
            "\n95% confidence interval: (",  mean_exp+conf_interval, ",", 
            mean_exp-conf_interval,")"))
# bar plot to show standard dev as error on data
par(mfrow=c(2,1))
bar_stdev <- barplot(exp_lvl, ylab= " Gene expression level", xlab=" Samples",
                     main="SD as Error bars on Gene expression data",
                     col = "red", ylim= c(0,110))
arrows(bar_stdev, exp_lvl+Sdev, bar_stdev, exp_lvl-Sdev, angle=90, code=3,
       length=0.08, col="black")
# bar plot to show confidence interval as error

bar_stdev2 <- barplot(exp_lvl, ylab= " Gene expression level", xlab=" Samples",
                     main="95% Confidence Interval as Error bars on Gene expression data",
                     col = "blue", ylim= c(0,110))
arrows(bar_stdev2, exp_lvl+conf_interval, bar_stdev2, exp_lvl-conf_interval,
       angle=90, code=3, length=0.08, col="black")

