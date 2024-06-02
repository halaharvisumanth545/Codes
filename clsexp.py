list1=[1,2,3,4,5]
def func(list):
    l2=list1
    l2.append(100)
    print(list1,l2,sep=':')
    return (list1,l2)
l3=func(list1)
print(l3)
