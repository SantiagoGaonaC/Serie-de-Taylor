x_i = 2.5
x_ii = 2.9
x_ii4 = sin(4*x_ii+6)
angulo = 2
dev = 0
cont = 1
n1 = TRUE
signo = TRUE

repeat{
  if(n1 == TRUE){
    n = 0
    x_ii1 = 0
    x_ii2 = 0
    x_ii3 = 0
    dev = 4^n*sin(4*x_i+6)
    x_ii = (dev/factorial(n))*(0.4)^(n)
    n1 = FALSE
    x_ii1 = x_ii
    x_ii2 = x_ii2+x_ii
    x_ii3 = x_ii3+x_ii
    n = n+1
  }
  else if (n1 == FALSE){
    if(angulo%%2 == 1)
    {
      dev = 4^n*sin(4*x_i+6)
    }
    else if(angulo%%2 == 0){
      dev = 4^n*cos(4*x_i+6)
    }
    x_ii = (dev/factorial(n))*(0.4)^(n)
    angulo = angulo+1
    n = n+1
    
    if(signo == FALSE){
      x_ii = x_ii*-1
    }
    cont = cont+1
    if(cont == 2){
      if(signo == TRUE){
        signo = FALSE
        }
      else  if(signo == FALSE){
        signo = TRUE
      }
      cont = 0
    }
    error = 0
    x_ii2 = x_ii2+x_ii
    error = abs((x_ii4-x_ii2)/x_ii4)*100
    x_ii3 = x_ii3+x_ii
    print(paste('\nDerivada #:',n-1))
    print(paste('Taylor:',x_ii3))
    print(paste(paste('Error %',error)))
  }
  if(error <=(3) & n>=2){
    print(paste('Derivada:',n-1))
    print(paste('Taylor:',x_ii3))
    break
    
    derivadas = c(n-1)
    taylor = c(x_ii3)
    error = c(error)
    dataf2 = data.frame(derivadas,taylor,error)
    dataf2
  }
  x_ii1 = x1
}