n=int(input('Enter number of rows required: '))
c=int(input('Enter number of columns required: '))
k=2
t=(n//2)
for i in range(1,n+1):
    for j in range(i,c+1):
        if(i==1):
            if(j==1):
                print('+',end='')
            elif(j%(c//2)!=0):
                print('-',end='')
            elif(j%(c//2)==0):
                print('+',end='')
            print('\n')
        while(k<(n//2)):
            if(j==1):
                print('|',end='')
            elif(j%(c//2)!=0):
                print(' ')
            elif(j%(c//2)==0):
                print('|',end='')
            print('\n')
            k+=1
        if(i==(n//2)):
            if(j==1):
                print('+',end='')
            elif(j%(c//2)!=0):
                print('-')
            elif(j%(c//2)==0):
                print('+',end='')
            print('\n')
        while(t>(n//2) and t<=n-1):
            if(j==1):
                print('|',end='')
            elif(j%(c//2)!=0):
                print(' ',end='')
            elif(j%(c//2)==0):
                print('|',end='')
            print('\n')
            t+=1       
        if(i==n):
            if(j==1):
                print('+',end='')
            elif(j%(c//2)!=0):
                print('-',end='')
            elif(j%(c//2)==0):
                print('+',end='')
