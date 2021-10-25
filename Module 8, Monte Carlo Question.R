#Roger H Hayden III
#10/25/2021
#Statistical Methods and Data Analysis
#Module 8 - Monte Carlo Question

#We have done several of these now. You need to be able to devise a plan to 
#investigate some questions on your own. Consider example 5.4.5 in our text.
#Monte Carlo the sampling distributions for both estimators and confirm the efficiency result.

#Question 5.4.5.
#Let Y1, Y2, and Y3 be a random sample from a normal distribution where both
#μ and σ are unknown. Which of the following is a more efficient estimator
#for μ?

#μ1 = 1/4 Y1 + 1/2 Y2 + 1/4 Y3
#μ2 = 1/3 Y1 + 1/3 Y2 + 1/3 Y3

set.seed(1001)
n<-1000
p<-3

data <- rnorm(np,20,4)
data <- matrix (data, n,p)

u1 <- numeric(n)
u2 <- numeric(n)
for(i in 1:n){
  u1[i] <- mean(data[i,])
  u2[i] <- 0.25*data[i,1]+0.5*data[i,2]+0.25*data[i,3]
}

var(u1)
var(u2)

var(u2)/var(u1)


