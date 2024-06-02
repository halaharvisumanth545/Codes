import math as m
inputf=input('Enter the function: ')
if(inputf=='sin'):
    theta=float(input('Enter the angle: '))
    res=m.sin(m.radians(theta))
    print(res)
elif(inputf=='cos'):
    theta=float(input('Enter the angle: '))
    res=m.sin(m.radians(theta))
    print(res)
elif(inputf=='tan'):
    theta=float(input('Enter the angle: '))
    res=m.tan(m.radians(theta))
    print(res)
elif(inputf=='addition'):
    a=float(input('Enter the number: '))
    b=float(input('Enter the number: '))
    print(a+b)
elif(inputf=='subtraction'):
    a=float(input('Enter the number: '))
    b=float(input('Enter the number: '))
    print(a-b)
elif(inputf=='multiplication'):
    a=float(input('Enter the number: '))
    b=float(input('Enter the number: '))
    print(a*b)
elif(inputf=='division'):
    a=float(input('Enter the number: '))
    b=float(input('Enter the number: '))
    print(a/b)
elif(inputf=='integer division'):
    a=int(input('Enter the number: '))
    b=int(input('Enter the number: '))
    print(a//b)
elif(inputf=='exponent'):
    a=float(input('Enter the number: '))
    b=int(input('Enter the index: '))
    print(a**b)
elif(inputf=='remainder'):
    a=int(input('Enter the number: '))
    b=int(input('Enter the number: '))
    print(a%b)
print('Thankyou for using this calculator.')
