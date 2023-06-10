# Question 7 Pract Assignment 1:
# In order to correlate the salary earned by an employee to his work experience in a particular
# company, 9 employees were randomly selected and the data on their work experience and salary was
# collected.
Work_Experience <- c(2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5, 10.5)
Monthly_Salary <- c(23.7, 25.6, 34.0, 35.8, 44.0, 46.0, 54.2, 55.9, 62.5)

# Write an R script to plot Monthly salary as a function of work experience.
# Give X, Y titles properly.
# Plot should have filled circles in blue color as points, also joined by a line.
plot(Work_Experience, Monthly_Salary, xlab="Work Experience(Years)",
     ylab="Monthly Salary (Thousand of Rupees)", 
     main="Monthly Salary (Thousand of Rupees) vs Work Experience(Years)", ylim = c(20,70), xlim = c(2,11), 
     pch = 16,col="blue")
lines( Work_Experience, Monthly_Salary )

## Conclusion: Salary increases by work experience linearly 
