##############  R script for computing and plotting ROC curve  #######################


## include pROC library

library(pROC)


## Read the data file in csv format into frame clled "data"
data = read.csv("white_wine_data.csv" ,header=TRUE)

## We will now see the effectiveness of "alcohol" content data in clssifying the "wine_quality" into 
##   "good" and "bad" by drawing ROC curve between these two quantities.

## call "plot.roc()" function to plot the curve

rocobj <- plot.roc(data$wine_quality, data$alcohol,             # data vectors       
                   main = "ROC curve for wine classification",  # main title
                   legacy.axes=TRUE,                      # TRUE will plot sensitivity against 1-specificity
                   # FALSE plots sensitivity aginst specificity
                   percent=TRUE,                          # TRUE plots in percentages, FLASE for fractions
                   col="red",                             # color of curve
                   type="l",                              # "l" for line
                   ci = TRUE,                             # if "TRUE", plot Confidence interval of AUC 
                   print.auc = TRUE,                      # print values of AUC
                   identity.lwd=2,                        # line width of identity line(45 deg line)
                   identity.col="purple",                 # color of identity line
                   print.thres=TRUE,                      # if "TRUE", print best threshold value on graph 
                   print.thres.col="red",                 # color of threshold value
                   print.thres.cex=0.8,                   # font size of threshold value
                   print.auc.col="red",                   # color of AUC curve
                   print.auc.cex=0.8                      # font size of AUC curve
                   
)          


## Compute confidence intervals of Sensitivities at vrious specificities.
##  (similarly, ci.sp() computes confidence intervals of specificities for various sensitivities
##  Useses bootstrap method.

ciobj <- ci.se(rocobj,                         # CI of sensitivity
               specificities = seq(0, 100, 5),  # CI of sensitivity at at what specificities? 0,5,10,15,....,100
               conf.level=0.95,                 # level of Confidence interval
) 


## Add the Confidence interval plot to the already existing plot
plot(ciobj, type = "shape", col = "cyan")     # plot as a blue shape

## Add the best threshold value to the plot
plot(ci(rocobj, of = "thresholds", thresholds = "best")) # add one threshold "shape", col = "#1c61b6AA")

## print the confidence intervals of sensitivity at vaarious specificities
print(ciobj)
