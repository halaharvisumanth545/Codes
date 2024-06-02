list1=[1,2,3,4,5,4]
for i in range(6):
    for j in range(i+1,6):
        if(list1[j]==list1[i]):
            print(list1[i],'is common')
