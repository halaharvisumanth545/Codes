package com.sumanth;

import java.io.*;

public class Filehandling {

	public static void main(String[] args)throws IOException {
		File f=new File("C:\\Testfiles\\Sumanth.txt");
        if(!f.exists()) {
        	f.createNewFile();
        	f.setWritable(true);
        	System.out.println("File is successfully created.");
        }else {
        	System.out.println("File already exixts.");
        }
        if(f.canWrite()) {
			System.out.println("You can write to this file.");
		}else {
			System.out.println("You cannot write to this file.");
		}
        f.setReadable(false);
        if(f.canRead()) {
			System.out.println("You can read this file.");
		}else {
			System.out.println("You are not authorised ot read this file.");
		}
	}
}
