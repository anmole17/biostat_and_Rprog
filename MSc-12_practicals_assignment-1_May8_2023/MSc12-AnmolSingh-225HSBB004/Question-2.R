# Question 2 Pract Assignment 1:
# Given "crop_table.txt"
# 2. The given data file ”crop table.txt” contains the Indian agricultural data for the fractional
# land cultivation of various crops in the country (expressed in percentage of total cultivation area in
# that year) over the years.
#a) Read the given data into a data frame called ”indat”.

indat <- read.table(file = 'crop_table.txt', header = TRUE)
print(head(indat))

#(b) Create a column consisting of the sum of cultivation areas of Rice, wheat and Cereals
#       over the years.
indat$rice_wheat_cereals <- (indat$Rice + indat$Wheat + indat$Cereals)
print(head(indat$rice_wheat_cereals))


#c)Create a subset of data in which cereals were cultivated in more than 10 percent of total
#       area and print this subset
cereals_gt_10 <- subset(indat, indat$Cereals > 10)
cat("Subset of cereal > 10 percent of total area:\n")
print(cereals_gt_10)
