import threading as T
import random as r
import time as t
bs=T.Semaphore(0)
cs=T.Semaphore(0)
wl=[]
chairs=3
customers=5
def barber():
    print('Barber is sleeping')
    if(len(wl)>0):
        wl.pop(0)
    print('Barber is cutting the hair')
    t.sleep(r.randint(1,5))
    print('Barber completed the hair cut')
    bs.release()
def customer(index):
    t.sleep(r.randint(1,5))
    if len(wl)<chairs:
        wl.append(index)
        print('Customer is waiting for the barber')
        bs.release()
        cs.acquire()
        print('Customer has completed his hair cut')
    else:
        print('Customer has left because, the waiting line is full')
bt=T.Thread(target=barber)
ct=[T.Thread(target=customer,args=(i,)) for i in range(customers)]
bt.start()
for c in ct:
    c.start()
    
