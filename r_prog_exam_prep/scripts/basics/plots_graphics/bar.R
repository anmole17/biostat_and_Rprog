# Define a data vector
data = c(1,3,6,4,9)

#bar plot the vector -- simple plot with no legends and colors
barplot(height=data, main="Cancer-data", xlab="Days", ylab="Response Index", 
        names.arg=c("grp-1","grp-2","grp-3","grp-4","grp-5"),
        border="blue", density=c(10,20,30,40,50))

# Create a data frame
col1 <- c(1,3,6,4,9)
col2 <- c(2,5,4,5,12)
col3 <- c(4,4,6,6,16)

data <- data.frame(col1,col2,col3)
names(data) <- c("patient-1","patient-2","patient-3")

# barplot with colors. Make sure that the plot and legends have same colors for items.
barplot(height=as.matrix(data), main="Experiment-1", ylab="dosage", beside=TRUE,
        col=rainbow(5))

#Add legends
legend("topleft", c("day1","day2","day3","day4","day5"), cex=1.0, bty="n",
       fill=rainbow(5))

# can use  beside=FALSE 1 bar, divided to make big

