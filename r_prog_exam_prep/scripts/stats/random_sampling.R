### Random sampling from a list of objects

x = 1:20

## sample without replacement, by default
sampled_data = sample(x, 12)

print("12 samples without replacements : ")
print( sampled_data)
cat("\n")
cat("\n")


## sample with replacement
sampled_data = sample(x, 12, replace=TRUE)

print("12 samples with replacements : ")
print(sampled_data)
cat("\n")
cat("\n")



### Weighted sampling

## we define 4 nucleotides 
nucleotides = c('A','T','G','C')

## Probabilities for their sampling. 'G' and 'C' appear 4 times more than 'A' and 'T')
probabilities = c(0.1, 0.1, 0.4, 0.4)

## sample 20 nucleotides randomly with replacement, with given probabilities.
nuc = sample(nucleotides, 20, prob=probabilities, replace=TRUE)

print("20 samples with probability weights (0.1,0.1,0.4,0.4) for (A,T,G,C) : ")
print(nuc)

## Collapse the character vector into a sequence string
seq = paste(nuc, collapse="")

cat("\n")

print(paste("letters collapsed into a weighted DNA sequence : ", seq))