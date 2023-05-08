# Question 2 Pract Assignment 1:
# Given "crop_table.txt"

#a) Read the given data into a data frame called ”indat”.

indat=read.csv(file = 'crop_table.txt', sep = "   ", header = TRUE)
indat$Rice

rice_wheat_cereals=(indat$Rice + indat$Wheat + indat$Cereals)
rice_wheat_cereals