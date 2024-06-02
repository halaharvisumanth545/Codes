import turtle as t
r=20
R=r
t.speed(10)
for i in range(1,11):
    t.circle(r*i,360)
    t.up()
    t.goto(0,-r*i)
    t.down()
else:
    t.up()
    t.goto(0,R)
    
