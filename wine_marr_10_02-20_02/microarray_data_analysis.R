# read the data
data=read.csv("microarray_data.csv",header=TRUE)
dim(data) # [1] 12652    16

# box plot of control normal 1 to normal 7 
boxplot(data[,3:16], ylim=c(0,2000))

# scatterplot normal1 vs normal2
plot(data$normal1, data$noromal2, ylim=c(0,2000), xlim=c(0,2000))
# plot(data$normal1, data$noromal2, ylim=c(0,2000), xlim=c(0,2000),col="blue", cex=0.3)

# histogram of normal 2
hist(data$normal2)
sdat=subset(data$normal2,data$normal2<1000)
print(length(sdat))
#[1] 10634
hist(sdat)

# histogram cancer 2<800
c2data=subset(data$cancer2, data$cancer2<800)
hist(c2data)

#cancer 5 more than 1000 exp
print(length(subset(data$cancer5,data$cancer5>1000)))
#[1] 1882
mean_normal=(data$normal1 + data$normal2 + data$normal3 + data$normal4 + data$normal5 + data$normal6 + data$normal7)/7
mean_cancer=(data$cancer1 + data$cancer2 + data$cancer3 + data$cancer4 + data$cancer5 + data$cancer6 + data$cancer7)/7
fold_change=(mean_cancer/mean_normal)
hist(fold_change)
hist(log2(fold_change))
#fold_change=(log2(mean_cancer)/log2(mean_norm))
#hist(fold_change)

# Date: 01-03-23
vec=data$normal1[data$normal1>1000]
vec2=subset(data, data$normal1>1000)
length(vec2)
#[1] 16
v3=data$normal1[c(1,3,5,7,9,11)]

#subset using string
x= c("MAPK3","DDR1", "HINT1", "KAT2B", "MMP10")
subset(data, data$SYMBOL=="MAPK3")
subset(data, data$SYMBOL %in% x)
data[data$SYMBOL %in% x,]
df=subset(data, data$SYMBOL %in% x )
subset(data,data$normal1>data$normal2)

