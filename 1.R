#exponential
library(pracma)
f=function(x) #the original equation on which newton raphson method is to be applied
{
  ((252/x^2)-(20/x)+((1200*exp(-60/x))/(x^2*(1-exp(-60/x)))))
}
newtonRaphson(f,x0=12)





#cauchy
x=c(3.7807, 2.9957, 5.2043, 4.8993, 2.6874, 4.9557, 4.9367, 3.4996, 3.1674)
f1=function(theta) #the original equation on which newton raphson method is to be applied
{
  sum((x-theta)/(1+(x-theta)^2))
}
newtonRaphson(f1,x0=median(x))






#normal square
f1 = function(z)
{
  0.1 * (sqrt(2 * pi))^(-1) * z^2 * exp(-(z^2)/2)
}
sum1 = function(theta)
{
  int1 = (1 + theta)^2 * pnorm(((-1) * sqrt(10) * (1 + theta)), mean = 0, sd = 1)
  int3 = (1 - theta)^2 * pnorm(((-1) * sqrt(10) * (1 - theta)), mean = 0, sd = 1)
  return(int1+int3)
}
sum2 = function(theta)
{
  low = -sqrt(10) * (1+theta)
  upp = sqrt(10) * (1-theta)
  int2 = integrate(f1,low,upp)
  return(int2$value)
}
theta = seq(-1,1,0.01)
risk_T = vector()
risk_xbar = rep(0.1,201)
for (x in theta)
{
  risk_T = append(risk_T, sum1(x) + sum2(x))
}
plot(theta, risk_T, type = "l", col = "blue", main = "Risk of T and X_bar assuming squared error loss", ylab ="Risk")
lines(theta, risk_xbar, col = "green")
legend("topright", c("risk_T","risk_xbar"), fill = c("blue", "green"),cex=0.6,bty='n')





#normal absolute
f1 = function(z)
{
  (sqrt(2 * pi * 10))^(-1) * abs(z) * exp(-(z^2)/2)
}
sum1 <- function(theta)
{
  int1 = (1 + theta) * pnorm(((-1) * sqrt(10) * (1 + theta)), mean = 0, sd = 1)
  int3 = (1 - theta) * pnorm(((-1) * sqrt(10) * (1 - theta)), mean = 0, sd = 1)
  return(int1+int3)
}
sum2 = function(theta)
{
  low = -sqrt(10) * (1+theta)
  upp = sqrt(10) * (1-theta)
  int2 = integrate(f1,low,upp)
  return(int2$value)
}
theta = seq(-1,1,0.01)
risk_T = vector()
risk_xbar = rep(0.2523,201)
for (x in theta)
{
  risk_T = append(risk_T, sum1(x) + sum2(x))
}
plot(theta, risk_T, type = "l", col = "blue", main = "Risk of T and X_bar assuming absolute error loss", ylab ="Risk")
lines(theta, risk_xbar, col = "green")
legend("topright", c("risk_T","risk_xbar"), fill = c("blue","green"),cex=0.6,bty='n')






#q6
f1 = function(mu)
{
  46.4684+(0.0567*(1110-mu)^2)
}
mu = seq(500, 2000, 0.1)
risk_mu = vector()
for (x in mu)
{
  risk_mu = append(risk_mu, f1(x))
}
plot(mu, risk_mu, type = "l", col = "blue", ylab = "risk", main = "Risk of mu using squared error loss function")







