package com.sumanth;
import java.io.*;
import java.util.*;
public class writingfiles {

	public static void main(String[] args)throws IOException {
        File file=new File("C:/Testfiles/scannertext.txt");
        Scanner sc=new Scanner(file);
        int lc=0;
        Scanner s=new Scanner(System.in);
        
        while(sc.hasNextLine()) {
            sc.nextLine();
            lc++;
        }
        System.out.println("Number of lines in the file: "+lc);

	}

}
