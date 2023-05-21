# 5. Chemists use Ion Sensitive Electrodes to measure ionic concentrations of
# acquous solutions. In order to calibrate this equipment, the output signal in
# millivolt was measured for known ion concentrations in units of ppm. The data is
# reproduced here:
#   concentration (in ppm) : 0.0, 50.0, 75.0, 100.0, 150.0, 200.0
# signal (in mV) : 1.72, 2.11, 2.36, 2.56, 3.05, 3.42
# Calculate a least square regression line between concentration and signal data.

X = c(0.0, 50.0, 75.0, 100.0, 150.0, 200.0)
Y = c(1.72, 2.11, 2.36, 2.56, 3.05, 3.42)
n = length(X)
sig_x_sq= sum(X^2)
sig_x_whole_sq= (sum(X))^2
sig_y = sum(Y)
sig_x = sum(X)
sig_X_Y = sum(X *Y)

delta = n*sig_x_sq - sig_x_whole_sq

b0 =  1/delta*(sig_y*sig_x_sq - sig_x * sig_X_Y )
b1 =  1/delta*(n* sig_X_Y - sig_x * sig_y )
y_fitted = b0 + b1*X

print(paste("Y_fitted"))

plot(X ,Y, col ="blue", pch =2,
     xlab = "Concentration (in ppm)", ylab= "Signal (in mV)", 
     main = "Concentration (in ppm) vs Signal (in mV)")
lines(X, y_fitted, col= "red", type ="l", lwd =2)
text(60, 3.1, paste("Slope=", round(b1,3), "; Intercept=", round(b0,3)))
     