#r=3 ; c=3
#amat <- matrix(vec, nrow=r, ncol=c, byrow=FALSE)

x <- c(10,20,30,40,50,60,70,80,90,100,110,120)
amat <- matrix(x, nrow=3, ncol=4)
amat

amat <- matrix(x, nrow=3, ncol=4, byrow=TRUE)
amat

rownames(amat) <- c("r1","r2","r3")
colnames(amat) <- c("c1", "c2", "c3", "c4")
dim(amat)
nrow(amat)
ncol(amat)

ax = c(2,5,3,7,1,8,9,10,1,12,5,10,4,17,15,11)
A = matrix(ax, nrow=4, ncol=4)
A

bx = c(12,5,3,17,1,18,9,10,1,12,5,10,4,15,15,14)
B = matrix(bx, nrow=4, ncol=4)
B


cx = c(13,6,10,8,4,7,31,8)
C = matrix(cx, nrow=4, ncol=2)
C
X = c(5, 6, 8, 9)
X

Y = c(8, 10, 12, 5)

#multiplied element-wise 
R = A*B

# matrix multiplication of A and B is represented by the operator "%*%" 
M = A %*% B

# outer product of two vectors X and Y can be performed using the oprator "%o%" tensor product
P = X %o% Y

# transpose
t(A) 

# diagonal elements
diag(A)

# identity matrix
k = 5
ds = diag(k)
ds

## solve matrix?
xvec = c(3, 4, -2, 4, -5, 1, 10, -6, 5)
 A = matrix(xvec, nrow=3, ncol=3, byrow=TRUE)
A
 b = c(5, -3, 13)
 
 X = solve(A, b)
 X
 
## inverse 
 invA = solve(A)
 
 rowMeans(A)
 colMeans(A)
 rowSums(A)
 colSums(A)