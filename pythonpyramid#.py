def pyramid():
    n=int(input('Enter number of rows required: '))
    t=n-1
    for i in range(1,2*(n+1)-1,2):
        print(' '*t,end='')
        print('#'*i)
        t-=1
pyramid()
