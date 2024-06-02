a=input("Enter the string: ")
n=len(a)-1
i=0
m=0
while (i<n):
    if (a[i] is a[n]):
        m=m+1
    i=i+1
    n=n-1
if (m==n):
    print(a," is  a palindrome string")
else :
    print(a,"is not a palindrome string")

    
