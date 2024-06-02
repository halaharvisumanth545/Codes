list1=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
txt=input('Enter the text: ')
list2=list(txt)
list3=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
for n in range(26):
    for i in range(len(txt)):
        if(list1[n]==list2[i]):
            list3[n]+=1    
    print(list1[n],'has repaeated',list3[n],'times')
            
            
            
