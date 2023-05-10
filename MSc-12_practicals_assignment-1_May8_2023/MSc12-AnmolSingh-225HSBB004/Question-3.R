# Question 3 Pract Assignment 1:
# Read the given data file ”crop table.txt” into a data frame called ”mydata”

mydata <- read.table(file = 'crop_table.txt', header = TRUE)
print(head(mydata))


#(a) Create a bar plot comparing the cultivation area of rice and wheat during 1980-81 and
# 2012-13. Label the entities properly.
# Subsetting the data for the 2 years: 1980_81, 2012_13
data1980_81<-subset(mydata, mydata$Year == "1980-81" )
data2012_13<-subset(mydata, mydata$Year == "2012-13" )

par(mfrow=c(2,1))
# plot 1: for 1980-81
names<-c("Rice", "Wheat")
barplot(c("Rice"=data1980_81$Rice, "Wheat"=data1980_81$Wheat),xlab = "Crops", 
        ylim=c(0,20), ylab="Percentage of Cultivation Area", names.arg=names,
        main="Cultivation area of rice and wheat during 1980-81", col = c("red","blue"))
# plot 2 : for 2012-13
barplot(c(data2012_13$Rice, data2012_13$Wheat), ylim=c(0,20), xlab = "Crops",
        ylab="Percentage of Cultivation Area", names.arg=names,
        main="Cultivation area of rice and wheat during 2012-13", col = c("red","blue"))

# (b) Create a Pie-chart depicting the percentage of cultivation areas of all the crops. Write
# the legends properly
# As Year is not mentioned assuming 2012-2013: the data subset is made already
X11()
#subset for only crop data: 
colum=colnames(data2012_13)[2:10]

data_pie=c(data2012_13$Rice,data2012_13$Wheat,data2012_13$Pulses,data2012_13$Grains
          ,data2012_13$OilSeeds,data2012_13$Sugarcane,data2012_13$Cotton,data2012_13$Jute)
pie(x=data_pie,data_pie, main="Cultivation area of crops during 2012-13",
    col = rainbow(length(data_pie)))

legend("topleft",colum, cex = 0.8,
       fill = rainbow(length(data_pie)))

# we can also do this using mean of the data:
mean_df<-mean(mydata)
data_pie=c(mean_df$Rice, mean_df$Wheat, mean_df$Pulses, mean_df$Grains
          , mean_df$OilSeeds, mean_df$Sugarcane, mean_df$Cotton, mean_df$Jute)
pie(x=data_pie,data_pie, main="Mean Cultivation area of crops 1950-2013",
    col = rainbow(length(data_pie)))

legend("topleft",colum, cex = 0.8,
       fill = rainbow(length(data_pie)))

