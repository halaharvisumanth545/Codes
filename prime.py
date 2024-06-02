n=int(input("Enter the number: "))
i=1
f=0
while (i<=n):
    if (n%i==0):
        f=f+1
    i=i+1
if (f==2):
    print(n,'is a prime number')
else :
    print(n,'is not a prime number')
