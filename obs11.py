import threading as T
import time as t
import random as r
n=5
tt=1
et=2
p=[]
cs=[T.Semaphore(1) for i in range(n)]
def philosopher(index):
    lcs=cs[index]
    rcs=cs[(index+1)%n]
    while True:
        print(f'Philosopher{index} is thinking')
        t.sleep(r.randint(0,tt))
        print(f'Philosopher{index} is hungry')
        lcs.acquire()
        locked=rcs.acquire(blocking=False)
        if locked:
            break
        lcs.release()
        print(f'Philosopher{index} couldn\'t get right chopstick')
    print(f'Philosopher{index} is eating')
    t.sleep(r.randint(0,et))
    lcs.release()
    rcs.release()
for i in range(n):
    pt=T.Thread(target=philosopher,args=(i,))
    p.append(pt)
    pt.start()
for i in p:
    i.join()
