
## Computing statistical parameters in R

## Define a data vector
x = c(51.4,36.3,45.9,49.5,46.9,48.5,50.0,45.0,44.2,46.0,41.9,42.4,50.7,41.4,41.2)

## Find the minimum value
xmin = min(x) 
print(paste("minimum = ", xmin))

## Find the maximum value
xmax = max(x)
print(paste("minimum = ", xmax))

## Compute the arithmetic mean
armean = mean(x)
print(paste("arithmetic mean = ", armean))

## Compute the geometric mean.
## Here, we compute log( [x1*x2*...*xn]^(1/n) ) and take its exponential.
## If numbers are large, direct products will become unmanagable. Hence this method.
geomean =  exp((1/length(y)) * sum(log(y)))
print(paste("geometric mean = ", geomean))

## Compute the harmonic mean
harmean = length(y)/sum(1/y) 
print(paste("harmonic mean = ", harmean))

## Compute the median function
med = median(x)
print(paste("median = ", med))

## compute the 0,25,50,75 and 100th percentile points:
yq = quantile(x, type=6)
print("0, 25, 50, 75 and 100 percentile points :  ")
print(yq)

## Get the interquartile range from the above data
IQrange = yq[4]-yq[2]
print(paste("The interquartile range (Q3-Q1) = ", IQrange))

## Get the 37th percentile point
per37 = quantile(x, probs=0.37, type=6)
print(paste("The 37th percentile = ", per37))

## Get the 20th and 80th percentile points
per2080 = quantile(x, probs=c(0.2,0.8), type=6)
print(paste("The 20th and 80th percentile points = ", per2080[1], "   ", per2080[2]))

## Compute a data summary using summary() function
datsum = summary(x)
print("Data summary with summary() function : ")
print(datsum)
