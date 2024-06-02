name=input('Enter the name of student: ')
m_marks=float(input('Enter DET marks(0-100): '))
p_marks=float(input('Enter python marks(0-100): '))
c_marks=float(input('Enter chemistry marks(0-100): '))
it_marks=float(input('Enter IT Workshop lab marks(0-100): '))
es_marks=float(input('Enter Environmental Science marks(0-100): '))
days=int(input('Enter number of days present(0-30): '))
total=m_marks+p_marks+c_marks+it_marks+es_marks
#for total marks
print('Total marks aquired are',total)
#for percentage
p=(total/500)*100
if (p>100):
    print('Invalid marks entered')
print('The percentage attained by the student is',p,'%')
if (p>=80 and p<100):
    print('Grade is  A')
elif (p>=70 and p<80):
    print('Grade is B')
elif (p>=60 and p<70):
    print('Grade is C')
elif (p>=50 and p<60):
    print('Grade is D')
elif (p>=35 and p<50):
    print('Grade is D1')
elif (p<35):
    print('Fail')
#for attendance
att=float((days/30)*100)
print(name,'has',att,'%','attendance')



