package com.sumanth.exam;
class T1 implements Runnable{
    public void run(){
        for(int i=0;i<5;i++){
            System.out.println("Hello");
        }
    }
}
public class thread {
    public static void main(String args[]){
        T1 t1=new T1();
        Thread t=new Thread(t1);
        t.start();
        System.out.println(t.getPriority());
    }    
}
