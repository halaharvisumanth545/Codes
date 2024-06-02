def fifo(pages,fs):
    pf=0
    frame=[]
    for page in pages:
        if page not in frame:
            if len(frame)<fs:
                frame.append(page)
            else:
                frame.pop(0)
                frame.append(page)
            pf+=1
        print(frame)
    return pf
n=int(input('Enter number of requests: '))
pages=[]
for i in range(n):
    d=int(input('Enter the request: '))
    pages.append(d)
fs=int(input('Enter the size of the frame in main memory: '))
print('The number of page faults: ',fifo(pages,fs))
