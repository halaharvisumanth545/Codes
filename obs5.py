n=int(input('Enter number of processes: '))
wt=[]
tat=[]
awt=0
atat=0
bt=[]
pr=[]
p=[]
for i in range(n):
    pn=int(input('Enter the process number: '))
    d=int(input('Enter the burst time of the process: '))
    pri=int(input('Enter the priority of the process: '))
    pr.append(pri)
    bt.append(d)
    p.append(pn)
    wt.append(0)
    tat.append(0)
cl=zip(pr,p,bt)
cl=sorted(cl)
pr,p,bt=zip(*cl)
prl=list(pr)
print('Process\tBurst Time\tWaiting Time\tTurn Around Time\tPriority')
for i in range(n):
    wt[i]=0
    tat[i]=0
    for j in range(i):
        wt[i]=wt[i]+bt[j]
    tat[i]=wt[i]+bt[i]
    awt+=wt[i]
    atat+=tat[i]
    prl[i]-=wt[i]
    print(f'P{p[i]}\t\t{bt[i]}\t\t{wt[i]}\t\t{tat[i]}\t\t{prl[i]}')
awt=awt/n
atat=atat/n
print(f'The average waiting time is: {awt}')
print(f'The average turn around time is: {atat}')
