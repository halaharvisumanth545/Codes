#string function in C: strlen() used for finding the length of the string
def length(str):
    count=0
    for i in string1:
        count+=1
    return count
string1=input('Enter the string: ')
print(length(string1))

#string function in C: strrev() used to reverse the string
def reverse(str):
    str2=string2[-1:-(int(length(string2)))-1:-1]
    return str2
string2=input('Enter the string: ')
print(reverse(string2))

#string function in C: strcat() used to conctenate two strings
def concatenate(str1,str2):
    str3=str1+str2
    return str3
str1=input('Enter the string: ')
str2=input('Enter the string: ')
print(concatenate(str1,str2))

#string function in C: strcpy() used to copy a string to another string
str3=input('Enter the string: ')
def copy(str1,str3):
    str4=str3
    return str4
copy(str1,str3)
print(str1)

#string function in C: strcmp() used to compare two strings
def compare(str5,str6):
    i=0
    r=0
    while(i<length(str5) and i<length(str6)):
        if(str5[i]==str6[i]):
            r+=1
        i+=1
    if(r==length(str5)):
        return 0
    else:
        return 1
str5=input('Enter the string: ')
str6=input('Enter the string: ')
print(compare(str5,str6))
