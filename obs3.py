f1=open('C:/Python OS/newtxt.txt','r')
data=f1.read()

f2=open('C:/Python OS/text.txt','a')
f2.write(data)
f1.close()
f2.close()
