#FCFS- 4c
#without arriving time
n=int(input('Enter number of processes: '))
wt=[]
tat=[]
bt=[]
atat=0
awt=0
for i in range(n):
    d=int(input(f'Enter the burst time of P{i+1}: '))
    bt.append(d)
    wt.append(0)
    tat.append(0)
print(f'Process\tBurst Time\tWaiting Time\tTurn Around Time')
for i in range(n):
    wt[i]=0
    tat[i]=0
    for j in range(i):
        wt[i]=wt[i]+bt[j]
    tat[i]=wt[i]+bt[i]
    atat=atat+tat[i]
    awt=awt+wt[i]
    print(f'P{i+1}\t\t{bt[i]}\t\t{wt[i]}\t\t{tat[i]}')
awt=awt/n
atat=atat/n
print(f'The average waiting time for the processes is: {awt}')
print(f'The average turn around time for the processes is: {atat}')

#with arrival time
#with arriving time
#n=int(input('Enter number of processes: '))
#wt=[]
#tat=[]
#bt=[]
#atat=0
#awt=0
#temp=[]
#at=[]
#for i in range(n):
#    d=int(input(f'Enter the burst time of P{i+1}: '))
#   t=int(input(f'Enter arrival time of P{i+1}: '))
#    bt.append(d)
#    at.append(t)
#    wt.append(0)
#    tat.append(0)
#    temp.append(0)
#temp.append(0)
#print(f'Process\tBurst Time\tArrival Time\tWaiting Time\tTurn Around Time')
#for i in range(n):
#    wt[i]=0
#    tat[i]=0
#    temp[i+1]=temp[i]+bt[i]
#    wt[i]=temp[i]-at[i]
#    if wt[i]<0:
#        wt[i]=0
#    tat[i]=wt[i]+bt[i]
#    atat=atat+tat[i]
#    awt=awt+wt[i]
#    print(f'P{i+1}\t\t{bt[i]}\t\t{at[i]}\t\t{wt[i]}\t\t{tat[i]}')
#awt=awt/n
#atat=atat/n
#print(f'The average waiting time for the processes is: {awt}')
#print(f'The average turn around time for the processes is: {atat}')

