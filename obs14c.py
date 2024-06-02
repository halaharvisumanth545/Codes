from collections import defaultdict
def lfu(pages,fs):
    frame=[]
    pf=0
    f=defaultdict(int)
    for page in pages:
        if page not in frame:
            if len(frame)==fs:
                min_f=min(frame,key= lambda x:f[x])
                frame.remove(min_f)
                f.pop(min_f)
            pf+=1
            frame.append(page)
        f[page]+=1
        print(frame)
    return pf
n=int(input('Enter number of requests: '))
pages=[]
for i in range(n):
    d=int(input('Enter request: '))
    pages.append(d)
fs=int(input('Enter size of frame: '))
print('Number of page faults: ',lfu(pages,fs))
