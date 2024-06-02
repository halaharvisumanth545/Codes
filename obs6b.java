package com.sumanth;
import java.io.*;
import java.util.*;
public class obs6b {

	public static void main(String[] args)throws IOException {
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the address of the file: ");
		String add=sc.next();
		File file=new File(add);
		System.out.println("The file exists        :"+file.exists());
		System.out.println("The file is readable   :"+file.canRead());
		System.out.println("The file is writeable  :"+file.canWrite());
		System.out.println("The sizeof the file is :"+(int)file.length()+" bytes"); 
		sc.close();
	}

}
