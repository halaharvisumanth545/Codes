package com.sumanth.exam;
class Thread3 implements Runnable{
    public void run()[
        for(int i=0;i<5;i++){
            System.out.println("HIIIII.....");
        }
    ]
}
public class threadingrunnable{
    public static void main(String args[]){
        Thread3 t=new Thread3();
        Thread t1=new Thread(t1);
        t1.start();
    }

}