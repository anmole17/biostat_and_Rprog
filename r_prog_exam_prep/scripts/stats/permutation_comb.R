###### Randoml sampling from a set of objects

# Create a vector integers from 1 to 100
x = c(1:100)

# we can randomly sample 20 of them with equal probability
s = sample(x,20)
print(s)

#####  To get the permutation of n objects

library(gtools)

## create a list of n objects

x = c('A','B','C','D') ## unique elements of x should be >= r

## get and print permuted list of n objects in x taken r at a time
## This function returns a matrix with permuted elements along rows.

permlist = permutations(n=length(x), r=3, v=x, repeats.allowed=FALSE)

print(permlist)



#####  To get the permutation and combination of n objects

library(gtools)

## create a list of n objects

x = c('A','B','C','D') ## unique elements of x should be >= r

# To get a combination of above list
## This function returns a matrix with permuted elements along rows.

y = combinations(n=length(x), r=3, v=x)

print(y)



## Function to compute permutation of n items taken r at a time

npermute = function(n,r) {
  
  nPr = factorial(n)/factorial(n-r)
  
  return(nPr)
} 


## Function to compute the combination of n items taken r at a time

ncomb = function(n,r) {
  
  nCr = factorial(n)/(factorial(r)*factorial(n-r))
  
  return(nCr)
}


### We use the functions

n = 10
r = 6

np = npermute(n,r)

nc = ncomb(n,r)

print(paste("Permutation of ", n, " things taken ",r," at a time = ", np))

print(paste("Combination of ", n, " things taken ",r," at a time = ", nc))