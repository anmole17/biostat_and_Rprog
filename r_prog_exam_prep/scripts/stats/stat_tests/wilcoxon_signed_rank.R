
## Wilcoxon signed rank test for one variable

x = c(176.9, 158.3, 152.1, 158.8, 172.4, 169.8, 159.7, 162.7, 156.6, 174.5, 184.4, 165.2, 147.8,
      177.8, 160.1, 161.5)

res = wilcox.test(x, mu=160, conf.level=0.95, alternative=c("greater"), conf.interval=TRUE )

print(res)

## Wilcoxon signed rank test for two dependednt variable


Pre_therapy = c(74, 72, 62, 58, 59, 65, 54, 63, 80, 66, 65, 64, 79, 60)

Post_therapy =  c(79, 55, 53, 53, 74, 55, 64, 55, 39, 44, 37, 68, 54, 54)

res = wilcox.test(Pre_therapy, Post_therapy, conf.level=0.95, alternative=c("greater"), 
                  conf.interval=TRUE, paired=TRUE )

print(res)