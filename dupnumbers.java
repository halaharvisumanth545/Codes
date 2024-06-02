package com.sumanth.exam;
import java.util.*;
public class dupnumbers{
	public static void main(String args[]) {
		int a[]= {0,0,0,0,0},data,i,j,s=0,r=0;
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter 5 unique numbers between 10 and 100.");
		for(j=0;j<5;j++){//j keeps track of the number that are there in the array step by step
			data=sc.nextInt();
			if(data>=10&&data<=100) {
				for(i=0;i<r;i++){//r keeps track of no. of numbers that have already been 
					if(a[i]==data) {//entered in to the array at that instant
						s++;//repeated count
					}
				}
				if(s>0) {
					System.out.println("Duplicate found. Retry");
					s--;//to make counter available for next iteration
					j--;//means that number has not been entered in to the array
					continue;
				}else {
					a[j]=data;//data assignment to the spaces in array
					System.out.printf("%d entered the array.\n",data);
					r++;//element entered
				}
			}else {
				System.out.println("Enter a value between 10 and 100 inclusive");
				j--;//means that this element has not been entered. 
			}
		}
		System.out.println("the unique 5 values that are entered are: ");
		for(i=0;i<5;i++) {
			System.out.printf("%d ",a[i]);
		}
	}
}