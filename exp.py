r=int(input('Enter the radius of the circle: '))
theta=float(input('Enter the angle between spokes: '))
t=int(input('Enter the thickness of pencil: '))
import turtle as m
m.circle(r)
m.up()
m.goto(0,r)
m.down()
m.pensize(t)
c=0
for i in range(r):
    if(c==360//theta):
        break
    m.backward(r)
    m.forward(r)
    m.right(theta)
    c+=1
    
