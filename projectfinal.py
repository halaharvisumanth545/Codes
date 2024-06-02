def data_base_system(filename):
    try:
        file1=open(filename)
        data=file1.readlines()
        l1=[]
        for l in data:
            word=l.split(',')
            l1.append(word)
        def cred(sub):
            if(sub=='Maths' or sub=='Python' or sub=='DET' or sub=='PYTHON' or sub=='MATHS' or sub=='BEEE' or sub=='beee' or sub=='Chemistry' or sub=='CHEMISTRY'):
                return 4
            elif(sub=='ES' or sub=='es'):
                return 0
            else:
                return 1.5
        def total(marks):
            t_m=sum(marks)
            return t_m
        def grade(marks):
            if(marks==0):
                g='Ab'
            elif(marks<40):
                g='F'
            elif(marks>=40 and marks<=49):
                g='E'
            elif(marks>=50 and marks<=59):
                g='D'
            elif(marks>=60 and marks<=69):
                g='C'
            elif(marks>=70 and marks<=79):
                g='B'
            elif(marks>=80 and marks<=89):
                g='A'
            elif(marks>=90):
                g='A+'
            return g
        def g_points(g):
            if(g=='A+'):
                g_p=10
            elif(g=='A'):
                g_p=9
            elif(g=='B'):
                g_p=8
            elif(g=='C'):
                g_p=7
            elif(g=='D'):
                g_p=6
            elif(g=='E'):
                g_p=5
            elif(g=='F'):
                g_p=0
            elif(g=='Ab'):
                g_p=0
            return g_p
        def sgpa(ms):
            s=0
            cs=0
            for i in range(len(ms)):
                g=g_points(grade(ms[i]))
                cs=cs+cred(sub[i])
                s=s+g*cred(sub[i])
            sgpa=s/cs
            return sgpa
        l2=l1.copy()#After removing the first row from the file
        sub=l1[0].copy()#for subjects
        for i in range(3):
            del(sub[0])
        sub[4]=sub[4].strip('\n')
        sub[8]=sub[8].strip('\n')
        rn=[]#for roll numbers
        del(l2[0])
        for i in l2:
            rn.append(int(i[0]))
        for i in range(len(l2)):
            for j in range(len(l2[i])):
                l2[i][j]=int(l2[i][j])
        l3=l2.copy()#for marks
        for i in l3:
            del(i[0])
        d1={}#keys-rollnumbers,values-total marks
        t=0
        for i in rn:
            d1[i]=total(l3[t])
            t+=1
        l4=[]#for grades
        for i in range(len(l3)):
            l4.append(0)
        for i in range(len(l3)):
            l4[i]=l3[i].copy()
        for i in range(len(l4)):
            for j in range(len(l4[i])):
                l4[i][j]=grade(l4[i][j])
        l5=[]
        for i in range(len(l4)):
            l5.append(0)
        for i in range(len(l4)):
            l5[i]=l4[i].copy()
        for i in range(len(l5)):
            for j in range(len(l4[i])):
                l5[i][j]=g_points(grade(l3[i][j]))
        l6=[]#for SGPA
        for i in range(len(l3)):
            l6.append(0)
        for i in range(len(l3)):
            l6[i]=sgpa(l3[i])
        file2=open('JNTUA2022CSE02totals.txt','w')
        for i in range(len(l3)):
            for j in range(len(l3[i])):
                if(j==0):
                    file2.write(f'\n{rn[i]}\n   {sub[j]}-{l3[i][j]}-{l4[i][j]}')
                elif(j>=1):
                    file2.write(f'\n   {sub[j]}-{l3[i][j]}-{l4[i][j]}')
            file2.write(f'\n   Total-{d1[rn[i]]}')
            if('F'in l4[i]):
                file2.write('\n   FAIL')
            else:
                file2.write('\n   PASS')
            file2.write(f'\n   SGPA:{l6[i]}')
        file1.close()
        file2.close()
        file2=open('JNTUA2022CSE02totals.txt')
        data=file2.read()
        print(data)
        file2.close()
    except FileNotFoundError:
        print('The file you entered doesnot exist on this machine.')
filename=input('Enter the file name: ')
data_base_system(filename)
