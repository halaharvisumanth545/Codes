import math as m
def  paging(mem_size,page_size,process_size):
    pages=m.ceil(process_size/page_size)
    frames=m.ceil(mem_size/page_size)
    p_table=[None]*pages;
    for page in range(pages):
        frame_number=page%frames;
        print(f'Page({page})=>Frame({frame_number})')
        p_table[page]=frame_number
    print(p_table)
mem_size=int(input('Enter size of memory(in bytes): '))
page_size=int(input('Enter size of page(in bytes): '))
process_size=int(input('Enter size of process(in bytes): '))
paging(mem_size,page_size,process_size)
