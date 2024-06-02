list1=[1,2,3,4,5,6,7,8,9,10]
#a) updating the elements of the list
list1[2]=32
list1[6]=22
print('a) Before updating, list1:',list1)
print('   After updating list1[2]=32 and list1[6]=22')
print(' ',list1,'\n\n')
#b) concatenation of lists
list1=[1,2,3,4,5,6,7,8,9,10]
list2=[11,12,13,14,15]
list3=list1+list2
print('b) After concatenating list2=[11,12,13,14,15] with list1')
print(' ',list3,'\n\n')
list1=[1,2,3,4,5,6,7,8,9,10]
#c) checking element in list
print('c) Checking whether key element is present in the list1') 
key=int(input('   Enter the key element: '))
if (key in list1):
    print('  ',key,'is present in the list\n\n')
else:
    print('  ',key,'is not present in the list\n\n')
list1=[1,2,3,4,5,6,7,8,9,10]
#d) inserting the element in to the list
print('d) Before inserting: ',list1)
list1.insert(2,23)
print('   After inserting 23 at index 2: ',list1,'\n\n')
#e) sum of the elements of the list1
list1=[1,2,3,4,5,6,7,8,9,10]
total=0
for i in range(10):
    total=total+list1[i]
print('e) list1=',list1)
print('   The sum of elements of list1 is',total,'\n\n')
#f) popping element out of the list1
list1=[1,2,3,4,5,6,7,8,9,10]
list2=[11,12,13,14,15]
print('f) Before popping, list1:',list1)
print('   Before popping, list2:',list2)
list1.pop()
list2.pop()
print('   After popping from list1:\n   list1:',list1)
print('   After popping from list2:\n   list2:',list2,'\n\n')
#g) sorting of list
list1=[12,32,3,234,445,3234,346,234,112]
print('g) Before sorting:',list1)
list1.sort()
print('   After sorting:',list1,'\n\n')
#h) maximum and minimum in a list
list1=[12,32,3,234,445,3234,346,234,112]
print('h) list1:',list1)
list1.sort()
mini=list1[0]
maxi=list1[8]
print('   Maximum value in the list:',maxi)
print('   Minimum value in the lsit:',mini,'\n\n')
#i) checking common elements in the lists
list1=[1,2,3,4,5,4]
print('i) list1:',list1)
for i in range(6):
    for j in range(i+1,6):
        if(list1[j]==list1[i]):
            print('  ',list1[i],'is common')