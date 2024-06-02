# even or odd
isEven <- function(n){
  if(n%%2==0){
    return (1)
  }else{
    return (0)
  }
}
a= as.integer(readline("Enter the number: "))
if(isEven(a)){
  print(paste(a,"is an even number"))
}else{
  print(paste(a,"is not an even number"))
}

# Area of the circle
area_circle <- function(r){
  return (3.14*r*r)
}
r=as.double(readline("Enter the radius: "))
print(paste("The area of the circle with radius",r,"is",area_circle(r)))

# area of rectangle using multiple inputs and multiple outputs
rect<- function(l,b){
  perimeter= 2*(l+b)
  area= l*b
  l1<-list(perimeter,area)
  return (l1)
}
l=as.integer(readline("Enter the length: "))
b=as.integer(readline("Enter the breadth: "))
print(rect(l,b))

#inline functions - if the body of the function is too small to create an R script and then run it
func<- function(x) x^2+4*x+4
print(func(243))

#lazy functioning of R. During the function call if there are any missing arguments, 
#there is no problem if the value of that is not used for the calculation of result.
sphere <- function(r,d){
  volume= (pi*(d^3))/6
}
d<-as.integer(readline("Enter the diameter of the sphere: "))
print(sphere(d=d))# here the value of r is not given during the function call. As it is not used in the calculation of result, the function
# doesn't throw any error.

#factorial
fact<- function(n){
  i=1
  f=1
  while(i<=n){
    f=f*i
    i=i+1
  }
  return (f)
}
n<- as.integer(readline("Enter the number to calculate the factorial: "))
print(paste("The factorial of",n,"is",fact(n)))

#recursions
rec_fact<- function(n){
  if(n==0){
    return (1)
  }
  else if(n==1){
    return (1)
  }else{
    return (n*rec_fact(n-1))
  }
}
num<- as.integer(readline("Enter the number to calculate factorial: "))
print(paste("The factorial of",num,"is",rec_fact(n)))
