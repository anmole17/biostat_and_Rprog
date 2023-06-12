# Question 5 Pract Assignment 1:

# a)  Plot a Poisson distribution with a mean 5 in the range 0 to 12. The title of the plot should
# be ”Poisson distribution : mean = 5”.


# Set the mean and range
mu <- 5

Z <- seq(0,12,0.1)
# Calculate the probabiliti density using dpois()
probs <- dpois(Z, lambda = mu)

plot(Z, probs,
     type='h',
     main='Poisson Distribution: mean = 5',
     ylab='Probability',
     xlab ='Number of Events')



# b) Generate 10000 points randomly drawn from a Gaussian distribution whose mean is 6.0
# and standard deviation is 1.6. Plot the histogram of these data points
mean=6
sd=1.6
X11()
data=rnorm(1000, mean=mean, sd=sd)
hist(data,
     main='Gaussian Distribution: mean = 6, sd=1.6',
     ylab='Frequency',
     xlab ='Data', ylim=c(0,250))

# # c) For this data, find the number of data points more than 2 standard deviations above the
# mean value and print this number
subdata1<- subset(data, data>((2*sd)+mean))
print(paste("Number of data points more than 2 standard deviation above mean value:", length(subdata1) ))

