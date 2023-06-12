curve(  3*x^2 + x, from=1, to=10, n=300, xlab="xvalue", ylab="yvalue", 
        col="blue", lwd=2, main="Plot of (3x^2 + x)"  )

eqn = function(x){sin(x)+cos(x)}

curve(eqn, from=0, to=2*pi, n=200, xlab="Y", ylab="X", col="blue",lwd=2, 
      main="Plot of  Y = sin(X)+cos(X) ")

equation1 = function(x){sin(x)+cos(x)}

curve(equation1, from=0, to=2*pi, n=300, xlab="X", ylab="Y", col="blue",lwd=2, 
      main="Plot of  Y = sin(X)+cos(X) ")

equation2 = function(x){0.5*sin(x)+cos(x)}

curve(equation2, from=0, to=2*pi, n=300, add=TRUE, xlab="X", ylab="Y", col="red",
      lwd=2, 
      main="Plot of  Y = sin(X)+cos(X) ")

# log="xy" sets both the axes to log scale. Similarly, log="x" and log="y" 
#set the X and Y axis respectively to the log scale. 
curve( x^2, from=1, to=1000, log = "xy", col="blue", lwd=2 )
