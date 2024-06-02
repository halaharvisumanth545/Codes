#9
import multiprocessing as mp
def cprocess(sv,lock):
    with lock:
        sv.value+=20
        print(f'The value of shared resource modified by child process. Value={sv.value}')
def pprocess(sv,lock):
    with lock:
        sv.value+=10
        print(f'The value of shared resource modified by parent process. Value={sv.value}')
sv=mp.Value('i',10)
lock=mp.Lock()
print(f'Initial value of shared resource:{sv.value}')
parent=mp.Process(target=pprocess,args=(sv,lock))
child=mp.Process(target=cprocess,args=(sv,lock))
child.start()
cprocess(sv,lock)
child.join()
parent.start()
pprocess(sv,lock)
parent.join()
