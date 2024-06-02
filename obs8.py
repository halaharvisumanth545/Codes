import threading as T
p=T.Semaphore(5)
def open_port(port_number):
    p.acquire()
    print(f'Port Number {port_number} opened\n')
def close_port(port_number):
    p.release()
    print(f'Port Number {port_number} closed\n')
for i in range(10):
    T.Thread(target=open_port,args=(i,)).start()
    T.Thread(target=close_port,args=(i,)).start()
