str1=input('Enter the string:')
n=int(input('Enter the value of n: '))
l1=list(str1)
l2=list(str1)
l3=list(str1)
if(n>0):
    for i in range(len(l1)):
        if(i<n):
            l1[i]=l1[i+len(l1)-n]
        elif(i>=n):
            l1[i]=l2[i-n]
    for i in l1:
        print(i,end='')  
elif(n<0):
    for i in range(len(l1)):
        if(i<abs(n)-1):
            l2[i]=l2[i+abs(n)]
        elif(i>=abs(n)-1):
            l2[i]=l3[i-(len(l2)-abs(n))]
    for i in l2:
        print(i,end='')
elif(n==0):
    print(str1)
            

    
