# Question 2 Pract Assignment 1:
# Given "crop_table.txt"

#a) Read the given data into a data frame called ”indat”.

indat <- read.table(file = 'crop_table.txt', header = TRUE)
print(head(indat))

#(b) Create a column consisting of the sum of cultivation areas of Rice, wheat and Cereals
#       over the years.
indat$rice_wheat_cereals <- (indat$Rice + indat$Wheat + indat$Cereals)
print(indat$rice_wheat_cereals)


#c)Create a subset of data in which cereals were cultivated in more than 10 percent of total
#       area and print this sunset
print(subset(indat, indat$Cereals > 10))
