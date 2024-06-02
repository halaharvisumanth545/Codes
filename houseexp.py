import turtle as t
t.pen(fillcolor='Green')
x=-(800**0.5)
y=0
t.speed(10)
t.left(45)
for i in range(1,9):
    t.goto(0,y)
    t.down()
    x=0
    k=0
    for j in range(1,9):
        if((i+j)%2==0):
            t.begin_fill()
            t.circle(20,360,4)
            t.end_fill()
        elif((i+j)%2!=0):
            t.circle(20,360,4)
        x=(800**0.5)*j
        if(j==8):
            break
        t.up()
        t.goto(x,y)
        t.down()
    k+=1
    y+=800**0.5
    t.up()

