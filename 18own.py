import string
def file_handling(file_path):
    file=open(file_path,'r')
    data=file.readlines()
    res=[]
    wc=0
    for line in data:
        word=line.split()
        for i in word:
            i=i.strip(string.whitespace+string.punctuation)
            i=i.lower()
            res.append(i)
    for i in res:
        print(i,end=' ')
file_path=input('Enter the path of file to be read: ')
file_handling(file_path)
