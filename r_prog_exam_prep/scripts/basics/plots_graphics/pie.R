
# create data
result = c(10, 30, 60, 40, 90)

# Create a Pie chart with a heading and rainbow colors
pie(x = result, main="Experiment-1", col=rainbow(length(result)),
    label=c("Mol-1","Mol-2","Mol-3", "Mol-4", "Mol-5"))


# create data
result <- c(10, 30, 60, 40, 90)

# Calculate the percentage of  sections and put it in the label
alabels <- round((result/sum(result)) * 100, 1)
alabels <- paste(alabels, "%", sep="")

colors <- c("blue", "green","red", "white", "black")

pie(result, main="Experiment-1", col=colors, labels=alabels, cex=0.8)

# draw the legend
legend(-1.1, 1.1, c("molecule-1", "molecule-2", "molecule-3",
                    "molecule-4", "molecule-5"), fill=colors)
