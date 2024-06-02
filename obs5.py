import turtle as t
r=int(input('Enter the radius ofthe first curve: '))
n=int(input('Enter the number of curves required: '))

for i in range(1,n+1):
    t.right(90)
    t.circle(r*i,180)
    t.up()
    t.goto(r*i,0)
    t.down()
    t.left(90)
    i+=1
    
    
