# Question 4 Pract Assignment 1:

#(a) Write a R function called ”string location” which takes two strings ”strbig” and
# ”strsmall” with the condition that length(strbig) > length(strsmall).
# The function checks whether strsmall is a substring of strbig. If so, it returns the start location
# of strsmall in strbig. If not, it returns zero.
# Demonstrate this with example DNA strings

## function to input strings
input_value <- function(string){
  if (interactive()) {
    con <- stdin()
  } else {
    con <- "stdin"
  }
  cat(string)
  symbol <- readLines(con = con,n = 1)
  return(symbol)
}

strbig <- input_value("Enter the big DNA string: \n")
strsmall<-input_value("Enter the DNA pattern to search: \n")

string_location<-function(strbig,strsmall){
  
  if(nchar(strbig)>nchar(strsmall)){
    pos=regexpr(strsmall,strbig, ignore.case=T)
    if(pos != -1){print(paste("The position of the pattern is: ", pos))
        return (pos)
      } else{print("Pattern Not found: 0") 
        return (0);}
  }else{print("Pattern bigger than string length")
    return (0)}
}
startpos<-string_location(strbig,strsmall)
 
# (b) Write a R function called ”VectorOp” which takes two vector of numbers V1 and V2 as
# parameters. It returns a vector which is the square root of the product of two vectors. Demonstrate
# this function with example


VectorOp<- function(V1, V2){
  if(length(V1)==length(V2)){
    vec=sqrt(V1*V2)
    return (vec)
  }  
  else{print("Vectors of Unequal size")}
  return (0)
  }

## example:
V1<- c(12,13,14,15,16,17,18,19,20)
V2<- c(3,5,7,9,11,13,17,19,23)
V3<-VectorOp(V1,V2)
print("Vector 1:")
print(V1)
print("Vector 2:")
print(V2)

print(paste("Square root of product of V1 abd V2 :" ))
print(V3)
