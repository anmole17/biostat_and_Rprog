#####         script  "coin_toss.r"    #################################


## Simulating a coins toss using unform deviates from runif()

## number of trials in 6 experiments.
ntrials = c(10,100,1000, 10000, 100000, 1000000)

## print the column nmaes
print(paste("trials  ", "heads ", "tails ", "P(head)"))

## find p(H) for each experment with N trials (ie., N coin tosses)
for(N in ntrials)
{
  ## generate N uniform deviates between 0 and 1 and returns them as a vector
  nx = runif(N)
  
  ## If the number is less than or equals 0.5, call it Head(H)
  nheads = length(subset(nx, nx <= 0.5))
  
  ## If the number if greater than 0.5, call it Tail(H)
  ntails = length(subset(nx, nx > 0.5))
  
  ## compute the probblity of head
  prob_head = nheads/N
  
  print(paste(nheads+ntails,"      ", nheads, "      ", ntails,"      ", prob_head))
  
}