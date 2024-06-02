l1=[1,2,3,4,5]
l2=[0,0,0,0,0]
for i in range(len(l1)):
        l2[i]=l1[i]
print(l1)
print(l2)
l2.pop()
print(l2)
print(l1)
