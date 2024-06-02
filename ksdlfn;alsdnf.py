import string
file=open('tttt.txt','r')
data=file.readlines()
d1={'year': None,'branch': None,'sem': None,'rollnumber': None,'marks': None}
m=[]
numbers=['1','2','3','4','5','6','7','8','9','0']
for line in data:
    u=0
    t=line.split(',')
    for l in t:
        l=l.strip(string.whitespace+string.punctuation)
        for l in t:
            if(len(l)==4):
                d1['year']=int(l)
            elif(len(l)==3):
                if('\n' in l):
                    pass
                elif(numbers not in l):
                    d1['branch']=str(l)
            elif(len(l)==1):
                d1['sem']=int(l)
            elif(len(l)==10):
                d1['rollnumber']=str(l)
        for l in t:
            if(len(l)==2):
               if(len(m)>=5):
                   break
               m.append(int(l))
            d1['marks']=m
    print(d1)

            
                
        
    
