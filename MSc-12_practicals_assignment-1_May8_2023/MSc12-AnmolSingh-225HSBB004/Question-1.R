# Question 1 Pract Assignment 1:

#a) Creating vectors for the data sets:
V1<-c("S1", "S2", "S3", "S4", "S5", "S6", "S7") 
V2<-c(233, 255, 199, 265, 200, 215, 207)
V3<-c(10, 20, 30, 40, 50, 60, 70)
V4<-c(12.22, 17.55)
V5<-c("experiment − 1", "M ethod − standard")

# b) creating data frame called table_1 from vectors V1,V2 n V3;
# print columns of the dataframe seperately 
table_1<-data.frame(V1,V2,V3)
print(paste(table_1$V1))
print(paste(table_1$V2))
print(paste(table_1$V3))

#c)  Multiply the columns V 2 and V 3 and print the resulting column vector.
V2xV3<-table_1$V2*table_1$V3
print(paste(V2xV3))

#d) Create a list called ”alldata” that contains the data frame ”table-1” and
#       the vectors V 4,V 5.
#   Access the vector V 5 from the list and print its elements.

alldata<- list(table_1,V4,V5)
print(paste(alldata[[3]]))
