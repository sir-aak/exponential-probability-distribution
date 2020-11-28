library(matlab)


# exponential probability density function with rate a
exponentialPDF = function (x, a=1.0)
{
  return (a*exp(-a*x))
}


# exponential cumulative density function with rate a
exponentialCDF = function (x, a=1.0)
{
  return (1 - exp(-a*x))
}


view = function()
{
  
  # rate parameters
  l1  = 0.5
  l2  = 1.0
  l3  = 1.5
  
  X   = linspace(0.0, 5.0, 100)
  
  Yp1 = exponentialPDF(X, l1)
  Yp2 = exponentialPDF(X, l2)
  Yp3 = exponentialPDF(X, l3)
  
  Yc1 = exponentialCDF(X, l1)
  Yc2 = exponentialCDF(X, l2)
  Yc3 = exponentialCDF(X, l3)
  
  par(mfrow=c(1, 2))
  
  # plot probability density function
  plot(X, Yp1, type="l", 
       xlab="x", ylab="P(x)",
       ylim=c(0.0, 1.5), col="blue", main=bquote(paste("exponential PDF")))
  
  par(new=T)
  
  plot(X, Yp2, type="l", 
       xlab="", ylab="", 
       ylim=c(0.0, 1.5), col="orange", axes=F)
  
  par(new=T)
  
  plot(X, Yp3, type="l", 
       xlab="", ylab="", 
       ylim=c(0.0, 1.5), col="green", axes=F)
  
  text(3.5, 1.1, expression(P(x) == lambda*exp(-lambda*x)))
  
  legend(3.5, 1.5, title="rates", 
         legend=c(expression(paste(lambda, "=0.5")), 
                  expression(paste(lambda, "=1.0")), 
                  expression(paste(lambda, "=1.5"))),
         col=c("blue", "orange", "green"), box.lty=0, lty=1:1, cex=0.9)
  
  
  # plot cumulative density function
  plot(X, Yc1, type="l", 
       xlab="x",  ylab="C(x)", 
       ylim=c(0.0, 1.0), col="blue", main=bquote(paste("exponential CDF")))
  
  par(new=T)
  
  plot(X, Yc2, type="l", 
       xlab="", ylab="", 
       ylim=c(0.0, 1.0), col="orange", axes=F)
  
  par(new=T)
  
  plot(X, Yc3, type="l", 
       xlab="", ylab="", 
       ylim=c(0.0, 1.0), col="green", axes=F)
  
  text(3.5, 0.3, expression(C(x) == 1 - exp(-lambda*x)))
  
  legend(3.5, 0.2, title="rates", 
         legend=c(expression(paste(lambda, "=0.5")), 
                  expression(paste(lambda, "=1.0")), 
                  expression(paste(lambda, "=1.5"))),
         col=c("blue", "orange", "green"), box.lty=0, lty=1:1, cex=0.9)
  
}
  

view()
