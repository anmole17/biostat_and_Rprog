# 13 April 2023
## Analysing height-weight data
# open adata file into data frame

data<- read.csv("SOCR_height_weight_data.csv", header=T)
print(dim(data))
print(colnames(data))
## convert heights and weight to cm and kg respectively
height <- data$Height.Inches*2.5
weight <- data$Weight.Pounds*0.45

# plot the histogram of height and weight
hist(height, breaks=30, xlim=c(150,190) )
X11()
hist(weight, breaks=30, xlim=c(30,80))

## compute mean and sd for height and weight
## because of large data(25000 points), 
## we assume these quantities are population(parent) 
##distribution quantities(mu, sigme)
mean_height<- mean(height)
mean_weight<- mean(weight)
sd_height<- sd(height)
sd_weight<- sd(weight)

## unit gaussian of height

z_height <- (height-mean_height)/sd_height
z_weight <- (weight-mean_weight)/sd_weight

# split the canvas into 4 sections and plot the 4 plots
par(mfrow=c(2,2))

## plot the 4 plots
hist(height, breaks=30, col="blue" )
hist(z_height, breaks=30, col="blue" )
hist(weight, breaks=30, col="red")
hist(z_weight, breaks=30, col="red")

## check the gaussian curve area properties
# for height
height_1sig <- subset(height, height>(mean_height-sd_height) 
						& height<(mean_height+sd_height))
						
length(height_1sig)

print(length(height_1sig)/length(height))
# 0.68356
height_2sig <- subset(height, height>(mean_height-sd_height*2) 
						& height<(mean_height+sd_height*2))
height_3sig <- subset(height, height>(mean_height-sd_height*3) 
						& height<(mean_height+sd_height*3))

length(height_2sig)

print(length(height_2sig)/length(height))
# 0.95

length(height_3sig)

print(length(height_3sig)/length(height))
# 0.99796

# for weight
weight_1sig <- subset(weight, weight>(mean_weight-sd_weight) 
						& weight<(mean_weight+sd_weight))
						
length(weight_1sig)

print(length(weight_1sig)/length(weight))
# 0.68356
weight_2sig <- subset(weight, weight>(mean_weight-sd_weight*2) 
						& weight<(mean_weight+sd_weight*2))
weight_3sig <- subset(weight, weight>(mean_weight-sd_weight*3) 
						& weight<(mean_weight+sd_weight*3))

length(weight_2sig)

print(length(weight_2sig)/length(weight))
# 0.95

length(weight_3sig)

print(length(weight_3sig)/length(weight))
# 0.99796


