package com.threading;

public class Threadusinginterface {

	public static void main(String[] args) {
		A1 a=new A1();
		B1 b=new B1();
		Thread t1=new Thread(a);
		Thread t2=new Thread(b);
		t1.start();
		t2.start();
		System.out.println(t1.getName());
		System.out.println(t2.getName());		

	}

}
class A1 implements Runnable{
	@override
	public void run() {
		for(int i=0;i<100;i++)
			System.out.println("Hello.. Good Morning");
	}
}
class B1 implements Runnable{
	@override
	public void run() {
		for(int i=0;i<100;i++)
			System.out.println("Hello");
	}
}