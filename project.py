def data_base_system(filename):
    try:
        file1=open(filename)
        data=file1.readlines()
        l1=[]
        for l in data:
            word=l.split(',')
            l1.append(word)
        def credit(sub):
            if(sub=='Python' or sub=='PYTHON' or sub=='DET' or sub=='MATHS' or sub=='Maths' or sub=='BEEE' or sub=='beee' or sub=='Chemistry' or sub=='CHEMISTRY'):
                c=4
            elif(sub=='ES' or 'es'):
                c=0
            return c
        def total(marks):
            t_m=sum(marks)
            return t_m
        def grade(marks):
            if(marks<40):
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
        l2=l1.copy()#After removing the first row from the file
        print(l2)
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
        print(l2)
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
