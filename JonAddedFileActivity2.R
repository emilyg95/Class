#Jonathan Gross
#435133
#Pol Sci 5625
# SP 2018

#1

for (n in c(200, 400, 600, 800)){
  j = 1:n
  print(paste("j^2 for n = ",n, " is ", sum(j^2)))
  print(paste("(n*(n+1)*(2*n+1)/6) for n = ",n, " is ", (n*(n+1)*(2*n+1)/6)))
  #both formulas produce equivalent values
}


#2
rep(seq(0,4),rep(5,5)) 
rep(1:5,5)
rep(seq(0,4),rep(5,5))  + rep(1:5,5)


#3
sample.variance <- function(x){
  1/(length(x)-1)*sum((x-mean(x))^2)
}

#4
?sample()
# output of sample() is a random vector of specified length (second input), containing random numbers between specified values (first input)

#5
x = sample(-100:100, size = 100)
x
for (i in 1:length(x)){
  if (x[i] %%2 == 1){
    x[i] = -x[i]
  }
}
x

#6
x = 1:100
y = 100:1
x%*%y

#7
varnames = paste("Var", seq(1,6), sep="")
varnames

#8
varnames = gsub("Var","",varnames)
varnames

#9
varnames = as.numeric(varnames)
varnames

#10
varnames2 = numeric()
for (i in 1:length(varnames)){
  if ( varnames[i]%%2 !=0){
    varnames2 = c(varnames2,varnames[i])
  }
}
varnames2

#11
# the vector varnames2 is duplicated to make it equal length to varnames, then subtracted from it
# Mathematically: [1 2 3 4 5 6] - [ 1 3 5 1 3 5]
varnames-varnames2
