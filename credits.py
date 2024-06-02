def credit(sub):
    if(sub=='C' or sub=='math' or sub=='eng' or sub=='phy'):
        c=3
    elif(sub=='ed'):
        c=2
    elif(sub=='c lab' or sub=='phy lab' or sub=='eng lab'):
        c=1.5
    elif(sub=='ed lab'):
        c=1
    return c
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
sub=['ed', 'C', 'math', 'phy', 'eng', 'ed lab', 'c lab', 'phy lab', 'eng lab']
l3=[[51, 62, 93, 94, 95, 98, 96, 94, 92], [71, 92, 44, 95, 62, 93, 94, 95, 91], [67, 87, 75, 89, 67, 91, 89, 99, 94], [75, 86, 76, 55, 45, 89, 91, 95, 96], [99, 99, 99, 99, 99, 97, 89, 97, 98], [67, 76, 55, 87, 78, 99, 96, 95, 94]]
l5=[[6, 7, 10, 10, 10, 10, 10, 10, 10], [8, 10, 5, 10, 7, 10, 10, 10, 10], [7, 9, 8, 9, 7, 10, 9, 10, 10], [8, 9, 8, 6, 5, 9, 10, 10, 10], [10, 10, 10, 10, 10, 10, 9, 10, 10], [7, 8, 6, 9, 8, 10, 10, 10, 10]]
def sgpa(ms):
    s=0
    cs=0
    for i in range(len(ms)):
        g=g_points(grade(ms[i]))
        cs=cs+credit(sub[i])
        s=s+g*credit(sub[i])
    sgpa=s/cs
    print(cs)
    print(s)
    return sgpa
print(sgpa([100,68,94,81,88,100,94,71,94]))


        
