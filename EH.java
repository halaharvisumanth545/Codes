package com.samhitha;

public class EH {
	
	public static void method1() {
		System.out.println("Program execution started");
		int n1=9;
		int n2=2;
		int res=0;
		try {
			res=n1/n2;
		}
		catch(ArithmeticException e) {
		    System.out.println("You are trying to divide a number by zero");
		    System.out.println("Exception: "+e.toString());
		}
		finally {
			System.out.println("Result is: "+res);
			System.out.println("This is the finally block");
		}
		
		System.out.println("Program Execution ended");
	}

	public static void main(String[] args) {
		method1();
	}

}
