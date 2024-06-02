package com.sumanth;

import java.util.*;
import java.io.*;

public class obs7b {

	public static void main(String[] args) throws IOException {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the file adress: ");
		String add=sc.next();
		readText(add);
		sc.close();
	}
	public static void readText(String add)throws IOException {
		File file=new File(add);
		Scanner sc=new Scanner(file);
		int lc=1;
		while(sc.hasNextLine()) {
			System.out.println(lc+". "+sc.nextLine());
			lc++;
		}
	}
}
