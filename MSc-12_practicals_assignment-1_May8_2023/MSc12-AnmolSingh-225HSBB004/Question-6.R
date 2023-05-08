# Question 6 Pract Assignment 1:

# a) plots their bar plots side by side.
placebo<-c(3.1,5.2,5.3,4.7,5.4,5.7,3.8,6.2,6.9,5.5,4.1,7.8)
treatment<-c(4.9,6.9,7.1,4.9,4.5,6.1,6.4,6.2,6.3,7.4,5.4,4.4)
par(mfrow=c(2,1))

barplot(placebo, ylab= " Test parameter", xlab="Patients", main="Placebo Data", col = "red", ylim= c(0,10))
barplot(treatment, ylab= " Test parameter", xlab="Patients", main="Treatment Data", col = "blue", ylim= c(0,10))