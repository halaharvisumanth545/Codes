package com.sumanth.exam;
class Increment{
	private int count=100;
	public synchronized void increment() {
		     count=count+10;
    }
	public int getCount() {
		return count;
	}
}
class t1 extends Thread{
	private Increment in;
	public t1(Increment in) {
		this.in=in;
	}
	public void run() {
		for(int i=0;i<10;i++) {
			in.increment();
		}
	}
}
public class ThreadPractice {
    public static void main(String args[])throws InterruptedException {
    	Increment in=new Increment();
    	t1 t1=new t1(in);
        t1 t2=new t1(in);
    	t1.start();
    	t2.start();
    	t1.join();
    	t2.join();
    	System.out.println(in.getCount());
    }
}