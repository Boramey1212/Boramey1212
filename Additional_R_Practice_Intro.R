#1. Data types

a <- 42
b <- "universe"
c <- FALSE
d <- 1:10
mtcars[1:10,]

class(a)
class(c)

#2. Objects

B=matrix(c(-4,2,-10,-5,6,2,7,-1,-1), nrow = 3, ncol = 3, byrow = TRUE, dimnames = list(c("row1", "row2","row3"),
                               c("C.1", "C.2", "C.3")))
B

t(B)
solve(B)

#3. meningococcal disease
 
dpois(x = 6, lambda = 8) # 12% chance of 6 cases exactly
1 - ppois(q = 10, lambda = 8)  #about 18% chance of more than 10 cases, 1-Pr[X = 10]


#4. data frames
class(mtcars)
dim(mtcars)
head(mtcars)
str(mtcars)
subset(mtcars,mpg>22)

hist(mtcars$mpg)

#5. Comments
x <- 1:10
# Creates the following vector of integers: 1  2  3  4  5  6  7  8  9 10

names(x) <- letters[x]
# name the elements of x with the letters "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"

x[1:3]
# selects the first three entries of x 

x[c(1,10)]
# selects entries at positions 1 and 10

x[c(-1,-2)]
# get rid of entries at positions 1 and 2


#6. Prob. sampling
rnorm(6) #  6 std nrml distribution values
rnorm(10, mean = 50, sd = 19) # set parameters
runif(n = 10, min = 0, max = 1) #uniform distribution
rpois(n = 10, lambda = 15) # Poisson distribution

# toss coin 8 times using binomial distribution 
rbinom(n = 8, size = 1, p = 0.5)
rbinom(8,1,.5) # args correct order

# 18 trials, sample size 10, prob success =.2 
rbinom(18, 10, 0.2)

#7. Normal curve 1
mu <- 0; sigma <- 1 
x <- seq(-4, 4, .01) 
fx <- (1/sqrt(2*pi*sigma^2))*exp(-(x-mu)^2/(2*sigma^2))
plot(x, fx, type = "l", lwd = 2)  
# options type="l"  produces line,  lwd=2 doubles line width


#Normal curve 2

oldpar <- par(mar = c(5, 6, 4, 2) + 0.1)  # room on left
z <- seq(-4, 4, length=1000) ; p <- dnorm(z)
plot(z, p, type="l", lwd=2, 
     main=expression("The Standard Normal Density Function"
    ~~ phi(z)), ylab=expression(phi(z) == frac(1, sqrt(2*pi)) *
     ~~ e^- ~~ frac(z^2, 2)))
abline(h=0, col="gray") ; abline(v=0, col="gray")
z0 <- z[z >= 1.96]    # define region to fill
z0 <- c(z0[1], z0) ;  p0 <- p[z >= 1.96]
p0 <- c(0, p0)
polygon(z0, p0, col="gray")
coords <- locator(2)    # locate head and tail of arrow using your mouse...
arrows(coords$x[1], coords$y[1], coords$x[2], coords$y[2], 
     code=1, length=0.125)
text(coords$x[2], coords$y[2], pos=3, # text above tail arrow
expression(integral(phi(z)*dz, 1.96, infinity) == .025))


# R functions
#write a customized function
pow <- function(x, y) {
# function to print x raised to the power y
result <- x^y
print(paste(x,"raised to the power", y, "is", result))
}

#check the function
pow(4,7.89)

