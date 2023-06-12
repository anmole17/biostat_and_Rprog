## include Cairo library
library(Cairo)




## Initialize the device for saving first plot.
## Plot will have length=500 pixel, width=500 pixel
## saved as a png image file called "testfile1.png"

Cairo(file="testfile1.png",
      type="png",
      units="px", 
      width=500, 
      height=500, 
      pointsize=12, 
      dpi="auto")

## Now render the plot 
x = rnorm(10000)
hist(x, col="red")

## When the device is off, file writing is completed.
dev.off()


## Initialize the device for saving second plot.
## Plot will have length=400 pixel, width=300 pixel
## saved as a png image file called "testfile2.jpg"

Cairo(file="testfile2.jpg",
      type="png",
      units="px", 
      width=400, 
      height=300, 
      pointsize=12, 
      dpi="auto")

## Now render the plot 
x = c(1,2,3,4,5,6)
y = c(10,20,30,40,50,60)

plot(x,y,col="red", type="b")

## When the device is off, file writing is completed.
dev.off()