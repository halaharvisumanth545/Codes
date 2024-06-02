n=int(input('Enter the number: '))
def factorial(n):
    if(n==0):
        return 1
    elif(n==1):
        return 1
    else:
        print(n)
        return n*factorial(n-1)
print(factorial(n))
