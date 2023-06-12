Xdata = c(2.1, 10.5, 4.2, 15.3, 13.6, 19.3, 5.6, 3.2, 12.6, 3.8, 14.1,  1.6, 
          19.6, 23.4, 24.0, 3.0, 23.0, 22.5, 22.0, 24.9, 23.0 )

Ydata = c(1.9, 11.4, 4.7, 16.2, 13.2, 18.9, 5.4, 2.9, 12.4, 21.0, 5.0, 23.1, 
          4.1, 2.6, 3.2, 20.0, 4.1, 24.5, 21.0, 24.0, 23.0  )

plot(Xdata,Ydata, pch=16, col="blue", cex = 0.6)

clabs = paste("p",seq(1,21), sep="")

text(Xdata+0.8, Ydata-0.5, clabs, col="black", cex=0.6,font=1)

# Generate 1000 random numbers from unit gaussian distribution
Xrandom = 10*rnorm(1000)

# Generate 1000 numbers from unit Gaussian
Yrandom = 10*rnorm(1000)

# plot the scatter plot. We choose color in Hexadecimal system
plot(Xrandom, Yrandom, cex=0.2, col="red", main="Scatter plot between 2
                    Gaussian deviates", xlim=c(-40,40), ylim=c(-40,40))