package com.sumanth;
import java.io.*;
import java.util.*;
public class files{
	public static void main(String args[])throws IOException {
		File file=new File("C:/Testfiles/scannertext.txt");
		Scanner sc=new Scanner(file);
		int wc=0;
		while(sc.hasNextLine()) {
			System.out.println(sc.nextLine());
			wc++;
		}
		System.out.println("No.of words in the text: "+wc);
	}
}