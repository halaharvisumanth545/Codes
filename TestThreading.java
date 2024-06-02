package com.threading;

public class TestThreading {

	public static void main(String[] args) throws InterruptedException {
        A a=new A("A-Thread");
        B b=new B("B-Thread");
        a.start();
        b.start();
        b.join();
        System.out.println(a.getName());
        System.out.println(b.getName());
	}

}
class A extends Thread{
	public A(String name) {
		super(name);
	}
	@override
	public void run() {
		for(int i=0;i<100;i++)
		System.out.println("Good Morning...");
	}
}
class B extends Thread{
	public B(String name) {
		super(name);
	}
	@override
	public void run() {
		for(int i=0;i<100;i++)
		System.out.println("1....2....3....sabhaku namaskaram");
	}
}