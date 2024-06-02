#creating a dataset
set.seed(123)
population<- rnorm(1000,mean=100,sd=20)
#mean
p_mean<-mean(population)
print(paste("the mean of the population dataset is: ",p_mean))
#summary
print(summary(population))
#range
p_range<-range(population)
print(paste("The lower limit of population dataset is: ",p_range[1]))
print(paste("The upper limit of population dataset is: ",p_range[2]))
#variance
p_variance<-var(population)
print(paste("The variance of the population dataset is: ",p_variance))
#median
p_median<-median(population)
print(paste("The median of the population dataset is: ",p_median))
#standard deviation
p_sd<-sd(population)
print(paste("The standard deviation of the population dataset is: ",p_sd))
#Histogram of the population data set
hist(population,main="Histogram of population data set")
#Box plot of the population data set
boxplot(population,main="Box Plot of population data set")

#scatter plot between two variables x and y being two instances of normal distributions
set.seed(536)
x<- rnorm(1000,mean=24,sd=12)
y<- rnorm(1000,mean=21,sd=13)
plot(x,y,main="Scatter plot between X and Y data sets")