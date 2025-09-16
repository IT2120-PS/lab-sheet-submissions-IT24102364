setwd("C:\\Users\\asind\\Desktop\\IT24102364")

#Exercise
#Part 1
#X - Number of minutes the train arrive after 8.00 am.
#P(X>=10) and P(X<=25)
punif(25,min = 0,max = 40,lower.tail = TRUE) - punif(10,min = 0,max = 40, lower.tail = TRUE)

#Part 2
#P(X<=3)
pexp(2,rate = 1/3,lower.tail = TRUE)

#Part 3
#(i)
#P(X>130)
pnorm(130,mean = 100,sd = 15,lower.tail = FALSE)

#(ii)
#95th percentile
qnorm(0.95,mean = 100,sd = 15)