# Use the package RcmdrPlugin.IPSUR. data(RcmdrTestDrive) and perform the below operations:
# a. Calculate the average salary by gender and smoking status.
install.packages("RcmdrPlugin.IPSUR")
install.packages("data.table")
library(RcmdrPlugin.IPSUR)

library(Rcmdr)

data(RcmdrTestDrive)

View(RcmdrTestDrive)

tapply(RcmdrTestDrive$salary, RcmdrTestDrive$smoking,mean)

aggregate(salary~gender+smoking,RcmdrTestDrive,mean)

# b. Which gender has the highest mean salary?
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender,mean)
#Male gender has highest mean salary with 743.39

# c. Report the highest mean salary.
max(RcmdrTestDrive$salary)

# d. Compare the spreads for the genders by calculating the standard deviation of salary by gender.

aggregate(salary~gender,RcmdrTestDrive,sd)
#the salary is spread more for Males compared to females