import math
print('''operation          -input\n
sin                -sin
cos                -cos
tan                -tan
cot                -cot
sec                -sec
cosec              -cosec
addition           -a
subtraction        -s
division           -d
integer division   -id
multiplication     -m
square root        -sr
inversse sin       -isin
incerse cos        -icos
inverse tan        -itan
hyperbolic sin     -hsin
hyperbolic cos     -hcos
hyperbolic tan     -htan
exponential values -power\n''')
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
elif (i_f == 'a'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a+b)
elif (i_f == 's'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a-b)
elif (i_f == 'm'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a*b)
elif (i_f == 'd'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a/b)
elif (i_f == 'id'):
    a=int(input('Enter number:'))
    b=int(input('Enter number:'))
    print(a//b)
elif (i_f == 'sr'):
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
elif (i_f == 'htan'):
    t=float(input('Enter value: '))
    res=math.tanh(math.radians(t))
    print(res)
elif (i_f == 'power'):
    a=int(input('Enter number:'))
    b=float(input('Enter index:'))
    print(pow(a,b))





