setwd("C:\\Users\\asind\\Desktop\\IT24102364")


data <- read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data)
attach(data)

#Question 1
#Population mean and Population standard deviation for laptop bag weights

popmn <- mean(Weight.kg.)
print(popmn)

popvar <- var(Weight.kg.)
print(popvar)

popsd <- sqrt(popvar)
print(popsd)

#Question 2
#The 25 random samples of size 6 (with replacement)
samples <- c()
n <- c()
for(i in 1:25){
  s <- sample(Weight.kg.,6,replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}
colnames(samples) = n
samples

#Means and standard deviation for each sample
s.means <- apply(samples,2,mean)
s.means

s.vars <- apply(samples,2,var)
print(sqrt(s.vars))


#Question 3
#The mean and standard deviation of the 25 sample means
samplemean <- mean(s.means)
samplemean

samplevar <- var(s.means)
samplesd <- sqrt(samplevar)
samplesd

#Compare and state the difference between true mean and true standard deviation

print(popmn)
popsd
samplemean
samplesd
#From the above observation it is clear that population mean is different from sample mean.
#Also the population standard diviation is different from the sample standard deviation.


