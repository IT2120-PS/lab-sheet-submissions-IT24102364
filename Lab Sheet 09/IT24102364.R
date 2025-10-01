setwd("C:\\Users\\asind\\Desktop\\IT24102364")

#Exercise 1
#Part i
#Generate a random sample of size 25 for baking time
x <- rnorm(25, mean = 45, sd = 2)
print(x)

#Part ii
#Hypothesis: H0: mu >= 46 vs H1: mu < 46
#5% level of significance
t.test(x, mu = 46, alternative = "less")
#Since p-value is less than the 0.05, we reject the H0 at 5% level of significance.
#Therefore we can conclude that,
#the average baking time is less than 46 minutes at a level of 5% level of significance.