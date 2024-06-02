package com.sumanth.exam;
class multithreads{
    public static void main(String args[])throws InterruptedException{
        T1 t1=new T1();
        T2 t2=new T2();
        T3 t3=new T3();
        t1.start();
        t2.start();
	    t3.start();
    }
}
class T1 extends Thread{
    public void run(){
    	for(int i=0;i<100;i++) {
            System.out.println("Good Morning..");
            try {
            	Thread.sleep(1000);
            }catch(InterruptedException e) {
            	System.out.println(e);
            }
    	}
    }
}
class T2 extends Thread{
    public void run(){
    	for(int i=0;i<100;i++) {
            System.out.println("Hello");
            try {
            	Thread.sleep(2000);
            }catch(InterruptedException e) {
            	System.out.println(e);
            }
    	}
    }
}
class T3 extends Thread{
    public void run(){
    	for(int i=0;i<100;i++) {
            System.out.println("Welcome");
            try {
            	Thread.sleep(3000);
            }catch(InterruptedException e) {
            	System.out.println(e);
            }
    	}
    }
}

    