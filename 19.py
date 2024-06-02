import string
file=open('text.txt','r')
data=file.readlines()
res=[]
wc=0
for line in data:
    word=line.split()
    for i in word:
        i=i.strip(string.whitespace+string.punctuation)
        i=i.lower()
        res.append(i)
        wc+=1
res_set=set(res)
final=[]
w_c={}
for i in res_set:
    final.append(i)
for i in final:
    w_c[i]=0
for i in final:
    for j in res:
        if(i==j):
            w_c[i]+=1
    print(i,':',w_c[i])
print('Total number of words in the file:',wc)
print('Total number of different words in the file:',len(final))
