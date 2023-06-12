xval = seq(1,10,0.5)
yval = 30*xval/(2+xval)
plot(xval,yval, pch=11, cex=1.2)


# The list of 25 symbols are given below:
#   
#   pch=0    square
# pch=1    circle
# pch=2    triangle point up
# pch=3    plus
# pch=4    cross
# pch=5    diamond
# pch=6    triangle point down
# pch=7    square cross
# pch=8    star
# pch=9    diamond plus
# pch=10   circle plus
# pch=11   triangles up and down
# pch=12   square plus
# pch=13   circle cross
# pch=14   square and triangle down
# pch=15   filled square blue
# pch=16   filled circle blue
# pch=17   filled triangle point up blue
# pch=18   filled diamond blue
# pch=19   solid circle blue
# pch=20   bullet (smaller circle)
# pch=21   filled circle red
# pch=22   filled square red
# pch=23   filled diamond red
# pch=24   filled triangle point up red
# pch=25   filled triangle point down red

# The parameter for changing the size of the data point is cex . This parameter takes values in units of 'fraction of default pixel size of fonts set in the machine and thus acts as a scaling parameter for the fonts.
# 
# 
# cex --->  A number indicating the amount by which plotting text and symbol
# should be scaled relative to the default value.
# 
# Thus, cex = 1     is default size
# cex = 1.5   is 150% of default size
# cex = 0.5   is 50% of default size
# 
# [Note :  cex.axis  --> scales the axis
#   cex.lab   ---> scales the label
#   cex.main --> scales main title
#   cex.sub  ---> scales the subtitle ]

# The colour of the data points can be set using a parameter called col.
# 
# 
# The colour parameter can be set in two ways. We can give the name of color value 
# as a string which is defined in R. Thus, 
# 
# col = "blue  -----------> sets the symbol to blue colour
# 
#     col = "red"  -----------> sets the symbol to red colour  etc.
# 
#      In R prompt, the command
# 
#           > colors() 
#
colors() 
#         returns names of 657 colours that can bes used for this parameter
# 

xval = seq(1,10,0.5)
yval = 30*xval/(2+xval)
plot(xval, yval, pch=20, cex=1, col="red" )


xval = seq(1,10,0.5)
yval = 30*xval/(2+xval)
plot(xval, yval, pch=20, cex=1, col="red", type="b")

#type="p" (Only points) 
# #type="l" (Only line)
# type="b" (line joining points)
# type="o" (line overlaying points)
# type="h" (histogram like)
# type="s" (steps)


# line types lty ; lwd --> line width
# lty = 0     or    lty = "blank"
# 
# lty = 1     or    lty = "solid"
# 
# lty = 2     or    lty = "dashed"
# 
# lty = 3     or    lty = "dotted"
# 
# lty = 4     or    lty = "dotdash"
# 
# lty = 5     or    lty = "longdash"
# 
# lty = 6     or    lty = "twodash"


xval = c(1,4,8,10)
yval = c(2,6,10,3)
plot(xval, yval, pch=20, cex=1, col="red", type="b", lty=1, lwd=1)

# main title
xval = seq(1,10,0.5)
yval = 30*xval/(2+xval)
plot(xval, yval, pch=18, cex=1.8, col="purple", type="o", lty=6, lwd=1,
     main="This is the main title", col.main="blue", font.main=2, cex.main=1.5 )

xval = seq(1,10,0.5)
yval = 30*xval/(2+xval)
plot(xval, yval, pch=18, cex=1.8, col="purple", type="o", lty=6, lwd=1,
     main="This is the main title", col.main="blue", font.main=1, cex.main=1.5,
     xlab = "Concentration (mmol/L)", ylab = "Velocity (mmol/L/sec)",
     font.lab = 2, col.lab="brown", cex.lab = 1.2)

# Range is set using xlim and ylim parameters
plot(Xvalue, Yvalue, col="blue", type="o", xlim=c(1,20), ylim=c(1,150))

Xvalue = c(1,2,3,4,5,6,7,8,9,10)
Yvalue = c(12, 23, 36, 48, 53, 64, 78, 89, 91, 110)

# We add text whose center is at a particular location (3, 105) in the plot.
# First look at the plot, and decide the units for (x,y)!!
plot(Xvalue, Yvalue, text(3,100,"This is text inside plot", col="brown", font=2))


## name data points
Xvalue = c(1,2,3,4,5,6,7,8,9,10)
Yvalue = c(12, 23, 36, 48, 53, 64, 78, 89, 91, 110)

# these letters are labels for data points.
cch = c("a","b","c","d","e","f","g","h","i","j")

# plotting the graph
plot(Xvalue,Yvalue, type="o")

# adding text label to each point
text(Xvalue+0.3, Yvalue, cch, col="blue", font=2)

# adding a second text string inside the plot.
text(5,90, "This is text", col="red")


# log scale
Xval = c(10,20,30,40,50,60)
Yval = 3*Xval^2
plot(Xval, Yval, log="y", type="o", col="blue", lwd=2)
