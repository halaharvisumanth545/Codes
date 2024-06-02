n=int(input('Enter n if     nth term required: '))
n1=0
n2=1
for i in range(1,n+1):
    if(i==1):
        total=0
    elif(i==2):
        total=1
    else:
        total=n1+n2
        n1=n2
        n2=total
print('The',n,'th term of fibonacci series is',total)

