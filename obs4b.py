#SJF
n=int(input('Enter the number of processes: '))
bt=[]
wt=[]
tat=[]
awt=0
atat=0
p=[]
for i in range(n):
    pr=int(input('Enter process number: '))
    d=int(input('Enter the burst time: '))
    bt.append(d)
    p.append(pr)
    tat.append(0)
    wt.append(0)
#combined list
cl=list(zip(bt,p))
cl=sorted(cl)
bt,p=zip(*cl)
print(f'Process\tBurst Time\tWaiting Time\tTurn Around Time')
for i in range(n):
    wt[i]=0
    tat[i]=0
    for j in range(i):
        wt[i]=wt[i]+bt[j]
    tat[i]=wt[i]+bt[i]
    awt=awt+wt[i]
    atat=atat+tat[i]
    print(f'P{p[i]}\t\t{bt[i]}\t\t{wt[i]}\t\t{tat[i]}')
awt=awt/n
atat=atat/n
print(f'The average waiting time is: {awt}')
print(f'The average turn around time is: {atat}')

