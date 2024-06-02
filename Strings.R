library(stringr)
s1<- "Hello"
nchar(s1)# length
str_length(s1)# should be used only when the stringr package is downloaded

typeof(s1)
# string slicing
str1<- "R Programming"
print(substr(str1,nchar(str1)-2,nchar(str1)))

substr(str1,nchar(str1),1)# accessing in reverse direction is not possible (not as reverse indexing in python)
# case conversion
str2<- "I lEaRn CoDiNg"
print(toupper(str2))
print(tolower(str2))
print(casefold(str2,upper=FALSE))
# string concatenation
result<- paste(str1,str2)
print(result)

str11<- "Hello Friends"
print(toupper(str11))
print(str11)
print(casefold(str11,upper=FALSE))
print(casefold(str11,upper=TRUE))

#replacing the substrings in R(manipulating the strings is possible in R, it's not immutable. A string is just a sequence of letters enclosed between a pair of single quotes or double quotes)
res<- gsub("Friends","World",str11)
print(res)
 
str12<- "Manoj"
str13<- "Sumanth"
res1<- paste0(str12,str13)# ensures no gap between the strings concatenated. 
print(res1)
res2<- paste(str12,str13)# ensures gap printed between the strings that have been concatenated
print(res2)

# string formatting
r<- sprintf("This is the result.!!")
print(r)
typeof(r)

#string mutation editing of strings  
res3<- "This is Sumanth Raj"
sprintf("Before mutation res3: %s",res3)
res3<- gsub("Sumanth Raj","Manoj Sreevastav",res3)
sprintf("After mutation res3: %s",res3)





