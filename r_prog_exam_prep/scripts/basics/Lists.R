expt_name <- c("Experiment-A","Experiment-B","Experiment-C", "Experiment-D", "Experiment-E")
  sample_length <- c(12.5, 32.6, 16.7, 20.6, 7.5)
  sample_weight <- c(1122, 1123, 1124, 1125, 1126)
  sample_category <- c('A','S','P','K','G')
  lab_name <- c("IBAB_LAB")
  
alis <- list(name=expt_name, length=sample_length, weight=sample_weight, 
               category=sample_category,lab=lab_name)
alis

str(alis)
names(alis)
alis$name
alis$name[2:4]
alis["name"]
alis[[1]]
alis[[5]]
alis[[1]][4]
alis[[1]][2:5]
blis = list(name1 =c(1,2,3,4,5), name2="aaaa")