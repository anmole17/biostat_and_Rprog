### Generating the probability density function of geometric distribution

x = seq(1,10)
p = 0.3
y =  dgeom(x,p)
plot(x,y,type="h", col="red", lwd=2, xlab="Trial number x that resulted in first success", ylab = "Geometric probability for x", font.lab=2, main="Probability density for geometric distribution")


## Computing cumulative probability upto x=4
p = 0.2
x = 4
prob = pgeom(x,p)
print(paste("Cumulative probability of geometric distribution upto x=4 = ", round(prob, digits=3)))

## Computing value of x at which cumuative probability crosses q
p = 0.2
pcumul = 0.738
xval = qgeom(pcumul, p)
print(paste("trial number x value at which cumulative probability crosses value 0.738 value = ", xval))

## Generating 6 random deviates from geometric distribution 
p = 0.4
x = rgeom(6, p)
print("some random deviates from geometric distribution with p=0.4 : ")
print(round(x, digits=3))