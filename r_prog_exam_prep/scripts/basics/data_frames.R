data1 <- c("Iron","Sulphur","Calcium", "Magnecium", "Copper")
data2 <- c(12.5, 32.6, 16.7, 20.6, 7.5)
data3 <- c(1122, 1123, 1124, 1125, 1126)
  
 frm1 <- data.frame(data1, data2, data3)
    
frm1

names(frm1)
rname = rownames(frm1)
cname = colnames(frm1)

names(frm1) <- c("Element", "Proportion", "Product_ID")
rownames(frm1) = c("elmt-1","elmt-2","elmt-3","elmt-4","elmt-5")

frm1[1,3]
frm1[1,]
frm1[,2]
frm1[1:3,]

frm1$Element
frm1$Product_ID
1000*frm1$Proportion
frm1$symbol = c("Fe","S","Ca","Mg","Cu")
frm1
frm1$Product_ID <- NULL
attach(frm1)
  
symbol