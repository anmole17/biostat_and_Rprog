# created on 10-02-23 R practical
# Analysis of whine data

# Read data table into data frame
data=read.csv(file="white_wine_data.csv",header=TRUE)

#get rows and columbs dimentions
print(dim(data))

#print columns names
print(colnames(data))

# properties of `fixed.acidiy` column
# mean
print(mean(data$fixed.acidity))
#standard deviation
print(sd(data$fixed.acidity))

# min and max
print(min(data$fixed.acidity))

print(max(data$fixed.acidity))
# histogram
hist(data$fixed.acidity)

#subset for `fixed.acidity`>8

n_gt_8<-subset(data$fixed.acidity, data$fixed.acidity>8)
print(length(n_gt_8)) # 394

# subset data frame for `fixed.acidity`>8
data_gt_8<-subset(data, data$fixed.acidity>8)
print(dim(data_gt_8)) # 394 13

#subset for `fixed.acidity`>8 and `data.pH`>2.5
data_fac_gt8_ph_gt10<-subset(data, (data$fixed.acidity>8) & (data$pH>2.5))

# box plot points outside whiskers called outliers
boxplot(data$fixed.acidity)

