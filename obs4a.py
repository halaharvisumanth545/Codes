n=int(input('Enter number of processes: '))
wt=[]
bt=[]
tat=[]
rbt=[]#remaining burst time
count=0#to ensure that all processes are completed
sq=0# buffer variable
temp=0#temporary variable
awt=0
atat=0
for i in range(n):
    d=int(input(f'Enter the burst time of P{i+1}: '))
    bt.append(d)
    rbt.append(d)
    wt.append(0)
    tat.append(0)
tq=int(input('Enter the time quantum: '))
while(True):
    for i in range(n):
        temp=tq
        if rbt[i]==0:
            count+=1
            continue
        if(rbt[i]>tq):
            rbt[i]=rbt[i]-tq
        else:
            if(rbt[i]>=0):
                temp=rbt[i]
                rbt[i]=0
        sq=sq+temp
        tat[i]=sq    
    if(count==n):
        break
print(f'Process\tBurst Time\tWaiting Time\tTurn Around Time')
for i in range(n):
    wt[i]=tat[i]-bt[i]
    awt=awt+wt[i]
    atat=atat+tat[i]
    print(f'P{i+1}\t\t{bt[i]}\t\t{wt[i]}\t\t{tat[i]}')
awt=awt/n
atat=atat/n
print(f'The average waiting time is: {awt}')
print(f'The average turn around time is: {atat}')
