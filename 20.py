import string
file=open('text.txt','r')
data=file.readlines()
res=[]
wc=0
for line in data:
    word=line.split()
    for i in word:
        res.append(i)
w={}
for i in res:
    w[i]=i
for i in res:
    print(i,end=' ')
a=input('\nEnter the word you want to replace:')
t=input('Enter the new word:')
w[a]=t
for i in w:
    print(w[i],end=' ')

