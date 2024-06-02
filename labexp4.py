n=int(input('Enter the number: '))
i=0
a=n
while(n>0):
    digit=n%10
    i+=1
    n//=10
m=i
l1=list(range(i))
n=a
i=0
while(n>0):
    digit=n%10
    l1[i]=digit
    i+=1
    n//=10
l2=l1[-1:-m-1:-1]
print(l2)
