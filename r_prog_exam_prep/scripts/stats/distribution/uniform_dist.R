
##### Using R library functions for Poisson distribution 

## Generate 5 uniform random numbers between 0 and 1.
x = runif(5)
format(x, digits=4)
print("five random numbers in [0,1] : ")
print(x)

print("")

## Generate 5 uniform deviates between 50 and 100
x = runif(5, min=50, max=100)
format(x, digits=4)
print("five random numbers in [50,100] : ")
print(x)

## Generate 100000 uniform deviates and plot the histogram
x = runif(100000)
hist(x, xlab="Value of random deviate x", ylab="Frequency", font.lab=2, breaks=10, main="", ylim=c(0,12000))

