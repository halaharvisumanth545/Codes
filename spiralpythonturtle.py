r=int(input('Enter the radius of circle: '))
import turtle as tt
c=0
for i in range(1,11):
    R=r*i
    tt.circle(R)
    tt.up()
    tt.goto(0,-R)
    tt.down()

