n=int(input('Enter number of rows required: '))
t=n-1
for i in range(1,n+1):
    print(' '*t,end='')
    print('*'*i)
    t=t-1
    
    
