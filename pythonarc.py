r=int(input('Enter the radius of the circle: '))
p=float(input('Enter the angle of rotation: '))
import turtle as t
import math as m
for p in range(181):
    t.x=r*m.cos(p)
    t.y=r*m.sin(p)
    t.goto(t.x,t.y)
