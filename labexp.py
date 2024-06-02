'''Given a list of numbers. Find sum,minimum,maximum,average,median and mode of the elements'''
n=int(input('Enter number of numbers being operated: '))
l1=list(range(n))
l2=list(range(n))
for i in range(n):
    a=int(input('Enter number: '))
    l1[i]=a
total=0
for i in range(n):
    total=total+l1[i]
print('The sum of all elements in the list:',total)
print('The minimum value in the list:',min(l1))
print('The maximum value in the list:',max(l1))
avg=total/n
print('The average of elements of the list:',avg)
l1.sort()
if((n-1)%2!=0):
    mdn=(l1[(n-1)//2]+l1[((n-1)//2)+1])/2
elif((n-1)%2==0):
    mdn=l1[n//2]
print('The median of elements entered:',mdn)
for i in range(n):
    a=l1.count(l1[i])
    l2[i]=a
t=max(l2)
if(t!=1):
    for i in range(n):
        if(l2[i]==t):
            ind=i
            break
    print('The mode of given data is',l1[ind])
elif(t==1):
    print('mode is not defined')
