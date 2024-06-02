package com.sumanth.exam;
class TC1 extends Thread{
	public void run() {
	    for(int i=0;i<20;i++) {
			System.out.println("Good Morning");
			try {
				Thread.sleep(1000);
			}catch(InterruptedException e) {
				System.out.println(e);
			}
		}
	}
}
class TC2 extends Thread{
	public void run() {
	    for(int i=0;i<20;i++) {
			System.out.println("Hello");
			try {
				Thread.sleep(2000);
			}catch(InterruptedException e) {
				System.out.println(e);
			}
		}
	}
}
class TC3 extends Thread{
	public void run() {
	    for(int i=0;i<20;i++) {
			System.out.println("Welcome");
			try {
				Thread.sleep(3000);
			}catch(InterruptedException e) {
				System.out.println(e);
			}
		}
	}
}
public class threading {
	public static void main(String[] args)throws InterruptedException {
        TC1 t1=new TC1();
        TC2 t2=new TC2();
        TC3 t3=new TC3();
        t1.start();
        t2.start();
        t3.start();
	}

}
