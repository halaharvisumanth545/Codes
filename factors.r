n=readline("Enter the number:")
n=as.integer(n)
i=2
f=2
print(paste(1))
while(i<n){
  if((n%%i)==0){
    print(paste(i,sep=" "))
    f=f+1
  }
  i=i+1
}
print(paste(n))
print(paste("Number of factors of",n,"are",f))
