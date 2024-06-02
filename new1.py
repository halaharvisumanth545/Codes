n=int(input('Enter the number of columns: '))
r=int(input('Enter the number of rows: '))
for  i in range(1,12):
    if(i==1):
        for j in range(1,12):
            if(j==1):
                print('+',end='')
            elif(j==2 or j==3 or j==4 or j==5):
                print('-',end='')
            elif(j==6):
                print('+',end='')
            elif(j==7 or j==8 or j==9 or j==10):
                print('-',end='')
            elif(j==11):
                print('+')
    elif(i==2 or i==3 or i==4 or i==5):
        for j in range(1,12):
            if(j==1):
                print('|',end='')
            elif(j==2 or j==3 or j==4 or j==5):
                print(' ',end='')
            elif(j==6):
                print('|',end='')
            elif(j==7 or j==8 or j==9 or j==10):
                print(' ',end='')
            elif(j==11):
                print('|')
    elif(i==6):
        for j in range(1,12):
            if(j==1):
                print('+',end='')
            elif(j==2 or j==3 or j==4 or j==5):
                print('-',end='')
            elif(j==6):
                print('+',end='')
            elif(j==7 or j==8 or j==9 or j==10):
                print('-',end='')
            elif(j==11):
                print('+')
    elif(i==7 or i==8 or i==9 or i==10):
            for j in range(1,12):
                if(j==1):
                    print('|',end='')
                elif(j==2 or j==3 or j==4 or j==5):
                    print(' ',end='')
                elif(j==6):
                    print('|',end='')
                elif(j==7 or j==8 or j==9 or j==10):
                    print(' ',end='')
                elif(j==11):
                    print('|')
    elif(i==11):
        for j in range(1,12):
            if(j==1):
                print('+',end='')
            elif(j==2 or j==3 or j==4 or j==5):
                print('-',end='')
            elif(j==6):
                print('+',end='')
            elif(j==7 or j==8 or j==9 or j==10):
                print('-',end='')
            elif(j==11):
                print('+')
            
