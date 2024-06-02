#GCD and LCM of two numbers
a=int(input('Enter the  first number: '))
b=int(input('Enter the second number: '))
i=1
while (i<=a and i<=b):
    if (a%i==0 and b%i==0):
        gcd = i
    i=i+1
lcm=(a*b)//gcd
print('The GCD of',a,'and',b,'is',gcd,'\nThe LCM of',a,'and',b,'is',lcm)
