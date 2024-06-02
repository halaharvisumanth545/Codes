package com.sumanth;
import java.io.*;
import java.util.*;
class scannerfiles{
	public static void main(String args[])throws IOException {
		String add=new String();
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the file address: ");
		add=sc.next();
		String text=readtext(add);
		System.out.println(text);
		System.out.println("Number of lines in the file: "+linecount(add));
		System.out.println("Number of words in the file: "+wordcount(add));
		System.out.println("Number of characters in the file: "+charcount(add));
		
		sc.close();
	}
	public static String readtext(String add)throws IOException {
		File f=new File(add);
		Scanner sc= new Scanner(f);
		String text=new String();
		while(sc.hasNextLine()) {
	        text+=sc.nextLine()+"\n";
		}
		sc.close();
		return text;
	}
	public static int wordcount(String add)throws IOException {
		File f=new File(add); 
		Scanner sc=new Scanner(f);
		int wc=0;
		while(sc.hasNext()) {
			sc.next();
			wc+=1;
		}
		sc.close();
		return wc;	
	}
	public static int linecount(String add)throws IOException {
		File f=new File(add); 
		Scanner sc=new Scanner(f);
		int lc=0;
		while(sc.hasNextLine()) {
			sc.nextLine();
			lc+=1;
		}
		sc.close();
		return lc;	
	}
	public static int charcount(String add)throws IOException {
		File f=new File(add); 
		FileInputStream fis=new FileInputStream(f);
		int cc=0;
		int ascii=0;
		String s=new String();
		while((ascii=fis.read())!=-1) {
			s+=String.valueOf((char)ascii);
			cc+=1;
		}
		fis.close();
		return cc;	
	}
}
