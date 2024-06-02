package com.samhitha;

public class exception {

	public static void main(String[] args)throws ArithmeticException {
		int n1=10;
		int n2=0;
		int res=0;
		try {
			res=n1/n2;
		}
		catch(ArithmeticException ae){
			System.out.println("Exception arised");
			throw ae;
		}
		finally {
			System.out.println("Out of try-catch blocks in exception.java");
		}

	}
}
