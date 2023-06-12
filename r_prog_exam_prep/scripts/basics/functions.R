# 
# myfunction <- function(argument1, argument2, ...) {
#   statements
#   return(object)
# }

# defining a function called normalize

normalize <- function(avec, anum) {
  norvec <- (avec/anum)^0.5
  
  return(norvec)
}



# Defining a vector and a number for data.
vec <- c(45.0, 67.0, 81.0, 57.0, 103.0, 122.0, 68.0, 98.0)
anumber = 21.5

# function call
normalvec <- normalize(vec, anumber)

# print the resulting vector returned by the function
print(normalvec) 

}