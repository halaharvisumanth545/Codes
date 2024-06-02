import math as m
def estimate_pi():
    k=0
    total=0
    while(True):
        factor=(2*(2**0.5))/9801
        num=m.factorial(4*k)*(1103+26390*k)
        den=(m.factorial(k)**4)*(396**(4*k))
        value=factor*(num/den)
        total=total+value
        if(abs(value)<1e-15):
            break
        k+=1
    return 1/total
print(estimate_pi())
print(m.pi)
