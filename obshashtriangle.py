n=int(input('Enter number of rows: '))
t=n-1
for i in range(1,2*(n+1)-1,2):
    print(' '*2*t,end='')
    print('# '*i)
    t-=1
