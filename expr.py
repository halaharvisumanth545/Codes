from math import factorial
n=int(input('Enter number of rows required: '))
t=n-1
for i in range(n):
    print(' '*t,end='')
    for j in range(i+1):
        print(factorial(i)//(factorial(j)*factorial(i-j)),end=' ')
    t-=1
    print()
    
