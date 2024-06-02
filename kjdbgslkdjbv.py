name=input('Enter the name of the student: ')
n=int(input('Enter number of subjects: '))
l1=[]#for subjects
l2=[]#for no.of working days  
for i in range(n):
    l=input('Enter the subject: ')
    l1.append(l)
    t=int(input('Enter number of working hours in subject: '))
    l2.append(t)
l3=[]#for no.attended classes
for i in range(n):
    print('Enter no.of days attended in',l1[i],end=':')
    m=int(input(''))
    l3.append(m)
d1={}#keys-subjects,values-attended hours and total working hours
for i in range(n):
    d1[l1[i]]=[l3[i],l2[i]]
at=[]#for attendance
for i in range(n):
    a=round((l3[i]/l2[i])*100,2)
    at.append(a)
print('Subject        Attendance')
for i in range(n):
    print(l1[i],'      ',at[i])
ta=round((sum(l3)/sum(l2))*100,2)#total attendance(ta)
print('The total attendance of',name,'is',ta)
rac=0#wrong attendance count 
for i in range(n):
    if(at[i]<40):
        rac+=1
    else:
        pass
if(rac>2):
    print(name,'is detained')
elif(rac==2):
    print(name,'is just eligible for writing end semester exams')
if(min(at)>40 and ta>=75):
    print(name,'is completely eligible for writing end semester examinations')
elif(ta>=65 and ta<75):
    print(name,'must pay condonation fee')
