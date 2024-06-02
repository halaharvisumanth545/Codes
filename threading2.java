package com.sumanth.exam;
class Thread1 extends Thread{
    public void run(){
        for(int i=0;i<5;i++){
            System.out.println("hii");
        }
    }
}
class Thread2 extends Thread{
    public void run(){
        for(int i=0;i<5;i++){
            System.out.println("hii all");
        }
    }
}
public class threading2 {
    public static void main(String args[]){
        Thread1 T1=new Thread1();
        T1.setPriority(Thread.MAX_PRIORITY);
        Thread2 T2=new Thread2();
        T2.setPriority(Thread.MIN_PRIORITY);
        T1.start();
        T2.start();
    }
}
