#creating a vector

#numeric vectors
a<- c(1,2,3,4,5,6,7,8,9,10)
print(a)
typeof(a)#double
class(a)#numeric

b<- c(1L,2L,3L)
print(b)
typeof(b)#integer
class(b)#integer

#character vectors
c<- c("sumanth","manoj","samhitha","mansa")
print(c)
typeof(c)#character
class(c)#character

d<- c("sumanth",45)
print(d)
typeof(d)#character
class(d)#character

#length of a vector
v1<- c("","Sumanth","Ajay","Nikhil")
length(v1)

v2<- c(TRUE,TRUE,FALSE,TRUE)
length(v2)

v3<- c(FALSE,FALSE,FALSE,FALSE)
length(v3)

#deleting a vector from the environment
v3<- NULL
ls()
rm(v3)
ls()

#sorting
s1<- c(1,4,3,2,9,-2,0)
ress<-sort(s1)
resss<- sort(s1,decreasing=TRUE)

print(ress)
print(resss)

