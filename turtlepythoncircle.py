r=int(input('Enter the radius: '))
a=float(input('Enter angle between spokes: '))
t=int(input('Enter thicknesss of spoke: '))
import turtle as m
m.circle(r)
m.up()
m.goto(0,r)
m.down()
m.pensize(t)
for i in range(r):
    m.backward(r)
    m.forward(r)
    m.right(a)
    i+=1
m.done()
