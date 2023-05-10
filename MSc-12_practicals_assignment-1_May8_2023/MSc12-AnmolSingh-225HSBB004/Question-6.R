# Question 6 Pract Assignment 1:

# a) plots their bar plots side by side.
placebo<-c(3.1,5.2,5.3,4.7,5.4,5.7,3.8,6.2,6.9,5.5,4.1,7.8)
treatment<-c(4.9,6.9,7.1,4.9,4.5,6.1,6.4,6.2,6.3,7.4,5.4,4.4)
par(mfrow=c(2,1))

# A) plots their bar plots side by side.
bar_placebo <- barplot(placebo, ylab= " Test parameter", xlab="Patients", main="Placebo Data", col = "red", ylim= c(0,10))
bar_treat <- barplot(treatment, ylab= " Test parameter", xlab="Patients", main="Treatment Data", col = "blue", ylim= c(0,10))
bar_placebo
bar_treat
# B) Add standard error on mean as error bar in the plot
SE_placebo=sd(placebo)/length(placebo)
SE_treat=sd(treatment)/length(treatment)
X11()
par(mfrow=c(2,1))
# plotting placebo
bar_placebo <- barplot(placebo, ylab= " Test parameter", xlab="Patients", main="Error bars on Placebo Data", col = "red", ylim= c(0,10))
arrows(bar_placebo, placebo+SE_placebo, bar_placebo, placebo-SE_placebo, angle=90, code=3, length=0.08, col="black")

bar_treat <- barplot(treatment, ylab= " Test parameter", xlab="Patients", main="Error bars on Treatment Data", col = "blue", ylim= c(0,10))
arrows(bar_treat, treatment+SE_treat, bar_treat, treatment-SE_treat, angle=90, code=3, length=0.08, col="black")
