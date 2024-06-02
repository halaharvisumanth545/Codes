a=int(input('Enter the side  of polygon: '))
n=int(input('Enter number of sides: '))
import turtle as t
for i in range(1,n+1):
    angle=360//n
    t.down()
    t.forward(a)
    t.left(angle)

