import math
print('add i prefix to the operation if inverse fuctions are being calculated')
print('add h prefix to the operation if hyperbolic fuctions are being calculated')
i_f=input('Enter the operation: ')
if (i_f == 'sin'):
    t=float(input('Enter the angle: '))
    res=math.sin(math.radians(t))
    print(res)
elif (i_f== 'cos'):
    t=float(input('Enter the angle: '))
    res=math.cos(math.radians(t))
    print(res)
elif (i_f== 'cosec'):
    t=float(input('Enter the angle: '))
    res=1/(math.sin(math.radians(t)))
    print(res)
elif (i_f== 'sec'):
    t=float(input('Enter the angle: '))
    res=1/(math.cos(math.radians(t)))
    print(res)
elif (i_f == 'addition'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a+b)
elif (i_f == 'subtraction'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a-b)
elif (i_f == 'multiplication'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a*b)
elif (i_f == 'division'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a/b)
elif (i_f == 'int division'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a//b)
elif (i_f == 'squareroot'):
    a=int(input('Enter number:'))
    print(a**0.5)
elif (i_f == 'tan'):
    t=float(input('Enter the angle: '))
    res=math.tan(math.radians(t))
    print(res)
elif (i_f == 'cot'):
    t=float(input('Enter the angle: '))
    res=1/(math.tan(math.radians(t)))
    print(res)
elif (i_f == 'isin'):
    t=float(input('Enter value: '))
    res=math.asin(t)
    print(res)
elif (i_f == 'icos'):
    t=float(input('Enter value: '))
    res=math.acos(t)
    print(res)
elif (i_f == 'itan'):
    t=float(input('Enter value: '))
    res=math.atan(t)
    print(res)
elif (i_f == 'hsin'):
    t=float(input('Enter value: '))
    res=math.sinh(math.radians(t))
    print(res)
elif (i_f == 'hcos'):
    t=float(input('Enter value: '))
    res=math.cosh(math.radians(t))
    print(res)




