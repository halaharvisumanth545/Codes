dict1={1:'Sumanth',2:'Manoj',3:'Prabhas'}
def func(dict):
    d2=dict1
    d2[2]='Sumanth'
    d3=dict1
    d3={1:'Manoj',2:'Prabhas',3:'Sumanth'}
    print(d2)
    print(d3)
func(dict1)
print(dict1)




list1=[1,2,3,4,5]
def func(list):
    list2=list1
    list2=[2,3,4,5,6]
    print(list2)
func(list1)
print(list1)




t1=(1,2,3,4,5)
def func(tuple):
    t2=t1
    t2=(2,3,4,5,6)
    print(t2)
func(t1)
print(t1)
