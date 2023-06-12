length = c(10.2, 11.9, 11.3, 12.2, 12.7, 12.8, 14.3, 14.5, 14.6, 15.9, 
           14.8, 15.0, 15.5, 13.2, 13.9, 18.5, 18.9, 18.4, 18.9,
           19.0, 19.5, 16.1, 16.2, 16.5, 16.8, 16.9, 16.7, 17.3, 
           20.2, 20.5, 20.9, 20.8, 20.2, 22.5, 22.7, 22.9)

hist(length, breaks=7, main="Simulated Data")


# Generate 10000 Gaussian deviates with mean=8, and Standard deviation=1.3
data = rnorm(10000, mean=8, sd=1.3)

#plot histogram with 40 bins
hist(data, breaks=40, col="red", xlim=c(2,14), ylim=c(0,800),
     main="Gaussian deviates :  mean=8, sigma=1.3", col.main="blue")



#Generate Gaussian deviates with mean=5, and SD=3
data <- rnorm(10000, mean=5, sd=3)

#plot histogram with 40 bins and get the returned histogram object.
hdat <- hist(data, breaks=40, col="red", xlim=c(-10,20), ylim=c(0,800),
             main="Simulated Data", col.main="blue")

# print the contents of hist, which has histogram data
print(hdat)

# we can access (for example) first 10 elements of bin data
print( hdat$breaks[1:10])

# we can access (for example) first 10 elements of counts on bins
print(hdat$counts[1:10])

# First 10 elements of Intensities
print(hdat$intensities[1:10])

## First 10 elements of Kernal Densitieshdat
print(hdat$density[1:10])

# First 10 elements of mid values
print(hdat$mids[1:10])