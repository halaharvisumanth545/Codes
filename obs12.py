import threading as T
import time as t
import random as r
import queue
q=queue.Queue()
def producer():
    while True:
        item=r.randint(1,1000)
        q.put(item)
        print(f'Producer produced item: {item}')
        t.sleep(r.random())
def consumer():
    while True:
        item=q.get()
        print(f'Consumer consumed item: {item}')
        q.task_done()
        t.sleep(r.random())
pt=T.Thread(target=producer)
ct=T.Thread(target=consumer)
pt.start()
ct.start()
pt.join()
ct.join()
