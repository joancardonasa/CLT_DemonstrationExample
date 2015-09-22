## CLT demonstration of the averages of the exponential distribution and the 
## dice roll

for (i in 1:1000) {
    a <- rexp(n = 40, rate = lambda)
    vec[i] <- (mean(a) - (1/lambda))/sqrt((lambda^-2)/40)
}

for (i in 1:1000) {

    dice <- sample(1:6, size = 1, replace = T)
    
    vec[i] <- (mean(dice) - 3.5)/(1.71/sqrt(10))
}
