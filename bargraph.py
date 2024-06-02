def graph(marks):
    import turtle as t
    t.speed(10)
    t.down()
    t.fd(int(len(marks)*45+120))
    t.bk(int(len(marks)*45+120)-20)
    for i in range(len(marks)):
        t.down()
        t.lt(90)
        t.fd(marks[i])
        t.rt(90)
        t.fd(45)
        t.rt(90)
        t.fd(marks[i])
        t.lt(90)
        t.fd(10)
        t.up()        
def file(file_name):
    import copy
    import turtle as t
    file=open(file_name,'r')
    data=file.readlines()
    l1=[]
    for line in data:
        word=line.split(',')
        l1.append(word)
    sub=l1[0].copy()
    del(l1[0])
    l2=copy.deepcopy(l1)
    for i in range(len(l2)):
        for j in range(len(l2[i])):
            l2[i][j]=int(l2[i][j])
    for i in l2:
        del(i[0])
    m=1
    for i in l2:
        graph(i)
        t.goto(0,int((-150)*m))
        m+=1
file('marks.txt')

