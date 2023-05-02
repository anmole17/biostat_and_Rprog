# 14-03-23 R practical
A <- c(50, 60, 70, 80, 90, 100)
B <- c(80, 90, 100, 110, 120, 130)
C <- c(60, 70, 80, 200, 220, 240)
# Union of 2 sets
U <- union(A, B)

# intersect of A and B
I <- intersect(A, B)
U3 <- union(U, C)
#library("ggplot2")
# sampling randomly from a set
x <- c(1:100)
#sample without replacement
S1 <- sample(x, 20)
S1
help(sample)
# sample with replacement
S2 <- sample(x, 20, replace = T)
S2
SS <- c("A", "T", "G", "C")
# DNA sequence
gs <- sample(SS, 100, replace = T)
gs
paste(gs, collapse = '')
install.packages("gtools")
library("gtools")
# permutations of n things taken r at a time
x <- c("A", "B", "C", "D")
prlist <- permutations(v = x,n = length(x),
                       r = 3,
                       repeats.allowed = F)
prlist

prlist2 <- permutations(v = x,n = length(x),
                       r = 3,
                       repeats.allowed = T)
prlist2

#combinations of n things taken r at a time

comlist <- combinations(n = length(x), r = 3, v = x)
comlist
library("gplots")

venn(list(A,B,C))

# cumulative probability
## Binomial distribution

n <- 12
x <-  7
p <- 0.5
pvalue <- pbinom(x,n,p)
pvalue
pbinom(12,12,p)

# x for a pvalue(cumulative prob)
x <- qbinom(0.8,n,p)
x
# random sampling from the distribution
n <- 10
p <- 0.5
xseq <- rbinom(100,n,p) 
xseq
r2 <- rbinom(10000,n,p) 
tb <- table(r2)
tb
plot(tb)
dim(tb)
vec <- sample(SS, 10000, replace = T)
tab <- table(vec)
plot(tab)

# dbinom : get actual probability for a  'x'

n <- 10
p <- 0.5
pdens <- dbinom(3,n,p)
pdens
x <- seq(0,n)
x
pdens <- dbinom(x,n,p)
pdens
plot(x,pdens, type = "h")

# Poisson distribution
help(ppois)
x <- 3
mu <- 8
# get the cumulative probability
pvalue <- ppois(x,mu)
pvalue
# get the x value given the pvalue and mu
xval <- qpois(pvalue, mu)
xval
# get the random sample for 100 samples for mu
xseq <- rpois(100,mu)
xseq
# get actual probability for the samples in xseq 
den <- dpois(xseq,mu)
den
plot(xseq,den, type = "h")
