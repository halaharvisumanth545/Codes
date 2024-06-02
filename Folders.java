package com.sumanth;
import java.io.*;
public class Folders {

	public static void main(String[] args)throws IOException {
	    File f=new File("C:/TestFiles/new/new1");
	    f.mkdirs();
	    File f1=new File("C:/TestFiles/new/new1/New1.txt");
	    f1.createNewFile();
	    if(f.exists())
	    System.out.println("File already exists.");
	    else System.out.println("Successfully created");
	    
	}

}
