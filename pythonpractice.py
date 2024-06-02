###if
a=int(input('Enter the number: '))
if(a>0):
    print('The number is positive')
#if-else
a=int(input('Enter the number: '))
if(a>0):
    print('The number is positive')
else:
    print('The number is negative')
#if-elif-else
a=int(input('Enter the number: '))
if(a>0):
    print('The number is positive')
elif(a==0):
    print('The given number is zero')
else:
    print('The number is negative')
#Iterative Statements
#for loop
for i in range(100):
    print(i,end=',')
for i in range(1,101):
    print(i,end=',')
for i in range(1,101,2):
    print(i,end=',')
#while
n=1
while(n<=10):
    print(n)
    n+=1
#break
for i in range(10):
    if(i==7):
        break
    print(i,end=',')
#nested loops
for a in range(0,3):
    for b in range(0,2):
        print('JNTUA')
'''JNTUA comes 6 times'''
#continue
for i in range(100):
    if(i==50):
        continue
    print(i)
    
