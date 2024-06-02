package com.sumanth.exam;
class A{
	static int i;
	public static void print1() {
		System.out.println("Hello Everyone-Super class method");
	}
	public static void show() {
	    System.out.println("This is the show of Super class");
	}
	public static void rollNo() {
		i=24;
		System.out.println("Super class roll no: "+i);
	}
}
class B extends A{
	public static void print2() {
		System.out.println("Hello Everyone-Child class method.");
	}
	public static void show() {
		System.out.println("This is the show of child class");
	}
	public static void rollNo(int n) {
		System.out.println("Child class roll no: "+n);
	}
}
public class Dbinding {
	public static void main(String[] args) {		
    A ob1=new A();
    B ob2=new B();
    A ob3=new B();
	ob1.print1();
	ob1.show();
	ob1.rollNo();
	ob2.print2();
	ob2.show();
	ob2.rollNo(22);
	ob3.print1();
	ob3.show();
	}
}