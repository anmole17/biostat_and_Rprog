data = read.csv("crop_table.csv", header=T)
x=subset(data, (data$Year>=1950)&(data$Year<=2012))

par(mfrow = c(2,2))
plot(x$Year, x$Wheat, type='o',pch=19)
plot(x$Cereals, x$Wheat, type='o',pch=19)

data$Total_production= data$Rice+ data$Wheat +data$Cereals
data$Total_production
