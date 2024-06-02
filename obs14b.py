from collections import deque
def lru(pages,fs):
    frame=deque(maxlen=fs)
    pf=0
    for page in pages:
        if page not in frame:
            if len(frame)<fs:
                frame.append(page)
            else:
                frame.popleft()
                frame.append(page)
            pf+=1
        else:
            frame.remove(page)
            frame.append(page)
        print(list(frame))
    return pf
n=int(input('Enter number of requests: '))
pages=[]
for i in range(n):
    d=int(input('Enter the request: '))
    pages.append(d)
fs=int(input('Enter the size of frame present in main memory: '))
print('Number of page faults: ',lru(pages,fs))
