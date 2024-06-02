#creating a list 
empId<- c(1,2,3,4)
empnames<-c("Sumanth","Manoj","Samhitha","Manasa")
empAges<-c(19L,19L,20L,24L)
l1<- list(empId,empnames,empAges)
print(l1)
#named list
l2<- list(empId=empId,empnames=empnames,empAges=empAges)
print(l2)
typeof(l2$empAges)#integer
typeof(l2$empId)#double
typeof(l2$empnames)#character

#accessing elements using $ operator
l2[[2]][1] # first element in the second section
# accessing name and ID from the list using for loop
for(i in 1:length(l2)){
  for(j in 1:length(i)){
    print(l2[[i]][j])
  }
}
l2
l2[[1]][1]
l2[[1]][2]
l2[[1]][3]
l2[[2]][1]
l2[[2]][2]
l2[[2]][3]
l2[[3]][1]
l2[[3]][2]
l2[[3]][3]

length(l2)
for(i in l2){
  print(length(i))
}
for(i in 1:length(l2)){
  for(j in 1:length(l2[[i]])){
    print(l2[[i]][j])
  }
}

#this didn't work
for(i in 1:length(l2)){
  for(j in 1:length(l2[[i]])){
    l3[[i]][j]=l2[[j]][i]
  }
}

#modifying the list
list1<- list("Name"=c("Sumanth","Nikhil","Ajay"),
             "Age"=c(19L,20L,20L))
list1$Name
list1$Name[2]="Nikhil Souri"
list1$Name

#concatenation of lists
list0<-list(c(1,2,3,4,5),c("A","B","C","D","E"))
list2<-list(c("a","b","c","d","e"))
list4<- c(list0,list2)
print(list4)

#appending/ adding elements to the list
append(list0[[1]],6)

#proj1 - failed
t1<-list(c(1,2,3,4),c("Sumanth","Nikhil","Ajay","Prem"))
j<-1
length(t1)
l4<-list()
for(i in 1:length(t1)){
  for(k in 1:length(t1)){
    append(l4[[k]],t1[[k]][j])
  }
  j=j+1
}
l4

#deleting the elements of the list