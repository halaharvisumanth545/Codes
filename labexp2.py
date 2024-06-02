'''given a anumber find the sum of the even digits in the number, product of odd
digits of the number, sum of the alternate digits of the number'''
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
total=0
p=1
for x in l1:
    if(x%2==0):
        total=total+x
    elif(x%2!=0):
        p*=x
print('Sum of even digits:',total)
print('Product of odd digits:',p)
total1=0
total2=0
l2=l1[-1:-m-1:-1]
for i in range(0,m,2):
    total1=total1+l2[i]
for i in range(1,m,2):
    total2=total2+l2[i]
print('The sum of alternative digits starting form first position is:',total1)
print('The sum of alternative digits starting from second position is:',total2)
 

