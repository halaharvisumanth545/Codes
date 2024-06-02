a=int(input('Enter the number: '))
i=0
n=a
while (a>0):
    digit=a%10
    i=i+1
    a=a//10
a=n
total=0
i=i-1
while (a>0):
    digit = a%10
    total = total + digit*(pow(10,i))
    i=i-1
    a=a//10
a=n
if (a==total):
    print(a,'is a palindome number')
else :
    print(a,"is not a palindrome number")
