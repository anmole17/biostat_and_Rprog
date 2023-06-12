# R functions for set operations

# Define 3 sets with number elements
A = c(10,20,30,40,50,60,70,80)

B = c(50,60,70,80,90,100,110,120,130)

C = c(60,70,100,110,150,170,180)

# Union between sets

U = union(A,B)

print("Set A : ")
print(A)
cat('\n' )


print("set B : ")
print(B)
cat('\n' )


print("set C : ")
print(C)
cat('\n' )



print("union of A and B : ")
print(U)

cat('\n')

# Intersection between the two sets
I = intersect(A,B)

print("intersection of A and B : ")
print(I)

cat('\n')

# Union of three sets
Uthree = union(union(A,B), C)

print("union of A, B and C : ")
print(Uthree)

cat('\n')

# Intersection of three sets. We successively call two at a time.
Ithree = intersect(intersect(A,B), C)

print("intersection of A, B and C : ")
print(Ithree)


# Venn diagram between the three sets: We use venn() function from gplots.

library(gplots)

venn(list(A,B,C))