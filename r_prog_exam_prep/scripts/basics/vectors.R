avec <- c(10.2, 5.5, 6.9, 7.2, 8.1)
avec

avec1 <- c("AEC", "AED", "AAB", "AFC")
avec2 <- c(10.2, 5.5, "6.9", 7.2, 8.1)
avec2

vec <- c(10.2, 5.5, 6.9, 7.2, 8.1)
assign("vec",  c(10.2, 5.5, 6.9, 7.2, 8.1) )
vec = c(10.2, 5.5, 6.9, 7.2, 8.1)
c(10.2, 5.5, 6.9, 7.2, 8.1) -> vec

x <- c(10,20,30,40,50,60,70,80,90,100,110,120,130)
x[3]
y= x[3] + x[6]
y

z = x[c(1,3,6)]
z

vstr <- c(1,2,3,4,5,6,7,8,9)
vstr + 100

vec1 <- c(1.5,2.5,3.5,4.5,5.5,6.5)
vec2 <- c(10,20,30,40,50,60)

vec1+vec2
vec1*vec2
vec1/vec2
log(vec2)

avec = c()
 
avec = c(avec,"ATG","TTG")
avec

v1 = c(10,20,30)
v2 = c(100,200,300,400) 
v3 = c(1000,2000,3000)
combvec = c(v1,v2,v3)
combvec

sq <- seq(1,50)
sq <- seq(1,50,5) # steps of 5


x = c(17, 18, 17, 19, NA, 17, 20, NA, 16, 22)
is.na(x)
!is.na(x)
x[!is.na(x)]
x[is.na(x)] <- 0

x = c('a','e','r','s','k','g','f')
L = length(x)
L

x = c(12,2,34,67,22,55,123)
 
sor = sort(x)
sor
ys = sort(x, decreasing=TRUE)
#  The default call to the sort() function ignores the NA values present in the vector:

sort(y, na.last=TRUE)
sort(y, na.last=FALSE)
y = c(12,2,34,NA,67,29,NA,NA,45,99)
max(vec)
min(vec)
max(y, na.rm=TRUE)
min(y, na.rm=TRUE)

labs <- paste( c("X"), 1:20, sep="")
labs
labs <- paste( c("X","Y"), 1:20, sep="")
# A particular element or a set of elements can be removed from a vector by 
# specifying the element index with a negative sign inside square bracket

x = c(5,10,15,20,25,30,35,40)
yr = x[-2]
ya = x[-2:-5]
y = x[c(-2,-4,-7)]