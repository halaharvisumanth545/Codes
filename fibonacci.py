n=int(input('Enter number of terms:'))
def fibonacci(n):
    if(n<=2):
        return 1
    else:
        return fibonacci(n-1)+fibonacci(n-2)
print(fibonacci(n))
    
