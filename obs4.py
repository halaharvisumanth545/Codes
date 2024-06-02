import turtle as t
n=int(input('Enter number of spokes: '))
r=int(input('Enter the radius of wheel: '))
t.circle(r)
t.up()
t.goto(0,0)
for i in range(1,n+1):
    t.down()
    t.goto(0,r)
    t.backward(r)
    t.forward(r)
    t.right(360//n)
    
