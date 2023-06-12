x = c(8,10,12,7,14,16,2,4,9,19,20,3,6)
x > 12
y = x[x>12]
y
x[ (x>10) & (x<20) ]

##----------------------------------------------------------------------
tarray <- c(2, 7, 29, 32, 41, 11, 15, NA, NA, 55, 32, NA, 42, 109)

karray <- tarray[ !is.na(tarray) & (tarray < 100) ]

tarray[is.na(tarray)] <- 0

print("Filter with NA's and numbers greater than 100 removed:")
print(karray)

print("Filter with NA's replaced by 0")
print(tarray)

tarray[ !is.na(tarray) & (tarray < 100) ]

#------------------------------------------------------------------


# subdata <- subset(datframe, datframe$npcol > 30.0)

# creating a vector of gene names
genes = c("gene-1","gene-2","gene-3","gene-4","gene-5","gene-5","gene-6")

# creating a vector of gender 
gender = c("M", "M", "F", "M", "F", "F", "M")

# creating 7 data vectors with experimental results
result1 = c(12.3, 11.5, 13.6, 15.4, 9.4, 8.1, 10.0)
result2 = c(22.1, 25.7, 32.5, 42.5, 12.6, 15.5, 17.6)
result3 = c(15.5, 13.4, 11.5, 21.7, 14.5, 16.5, 12.1)
result4 = c(14.4, 16.6, 45.0, 11.0, 9.7, 10.0, 12.5)
result51 = c(12.2, 15.5, 17.4, 19.4, 10.2, 9.8, 9.0)
result52 = c(13.3, 14.5, 21.6, 17.9, 15.6, 14.4, 12.0)
result6 = c(11.0, 10.0, 12.2, 14.3, 23.3, 19.8, 13.4)

# creating a data frame with this data.
# genes along rows, results along columns
datframe = data.frame(genes,gender,result1,result2,result3,result4,
                      result51,result52,result6)

# adding column names to data frame
names(datframe) = c("GeneName", "Gender", "expt1", "expt2", "expt3", "expt4",
                    "expt51", "expt52", "expt6")

# creating subset of data with expt2 values above 20
subframe1 = subset(datframe, datframe$expt2 > 20)

# creating a subset of data with only Female gender
subframe2 = subset(datframe, datframe$Gender == "F")

# creating a subset with male gender for which expt2 is less than 30 
subframe3 = subset(datframe, (datframe$Gender == "M")&(datframe$expt2 < 30.0) )

# printing the data frames
print("subframe1 : Rows with expt2 > 20")
print(subframe1)

print("subframe2 : Rows with gender Female")
print(subframe2)

print("subframe3 : Rows with Male gender and expt2 < 30.0")
print(subframe3)

#------------------------------------------------------------

# The simplest format is, diff(x,n), where 'x' is the vector of numbers, and 'n' is the space for the difference. For example, n=1 means difference between successive numbers, n=2 means between alternate numbers.


x = c(4,8,11,14,35,56,120,30)

diff(x)
diff(x,2)

cumsum(x)

cumprod(x)

x = c('a','b','a','c','e','f','c','g','h')

duplicated(x)
x[duplicated(x)]
unique(x)

xx = c('A','T','A','G','T','A','T','C','C','A','T','T','G')
# freq table
tab = table(xx)

 dat = as.data.frame(tab)
dat

# get index
x = c("aaa","bbb","ccc","ddd","eee","fff","ggg","hhh")
 
which(x=="ddd")

# combine data frames
 index = seq(1:8)
 
 product = c("wheat","rice","millet","ragi","corn","pulses","meat","sugarCane")
   quantity1 = c(118,179,24,39,32,59,72,84) 
  
 quantity2 = c(128,169,29,35,30,57,67,78)
 
 sales = c(1200,1400,800,600,400,2900,3000,490 )
 
  frame1 = data.frame(index = index, product=product, quantity=quantity1)

 frame2 = data.frame(index=index, product=product, quantity=quantity2)
frame3 = data.frame(index=index, product=product, sales=sales)

# vertically one below the other ( row binding ), use rbind() function
vbframe = rbind(frame1, frame2)

#two data frames horizontally (column binding ), we use the cbind() 
hbframe = cbind(frame1, frame2)

mrgA = merge(frame1, frame3, by="product")

mrgB = merge(frame1, frame3, by=c("index","product")) 
 
mrgB

 df1 = data.frame(experimentID = c(1:6), genes=c("g1","g1","g1","g2","g2","g2"))
  
df2 = data.frame(experimentID = c(1,3,5), tissues = c("heart","heart","liver"))

#Outer join :
 OJ = merge(x = df1, y = df2, by = "experimentID", all = TRUE)

 #Left Outer :
 LO = merge(x = df1, y = df2, by = "experimentID", all.x = TRUE)

 #Right Outer :
 RO = merge(x = df1, y = df2, by = "experimentID", all.y = TRUE)
 
 #Cross Join :
   
CJ = merge(x = df1, y = df2, by = NULL)
 