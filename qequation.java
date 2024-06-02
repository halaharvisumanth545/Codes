package com.sumanth.exam;
import java.util.*;
public class qequation {
    public static void main(String args[]) {
    	int a1[][]=new int[3][3];
    	int a2[][]=new int[3][3];
    	int res[][]=new int[3][3];
    	int i,j;
    	Scanner sc=new Scanner(System.in);
    	for(i=0;i<3;i++) {
    		for(j=0;j<3;j++) {
    			System.out.printf("Enter a1[%d][%d]: ",i,j);
    			a1[i][j]=sc.nextInt();
    		}
    	}
    	for(i=0;i<3;i++) {
    		for(j=0;j<3;j++) {
    			System.out.printf("Enter a2[%d][%d]: ",i,j);
    			a2[i][j]=sc.nextInt();
    		}
    	}
    	for(i=0;i<3;i++) {
    		for(j=0;j<3;j++) {
    			res[i][j]=0;
    			for(int k=0;k<3;k++) {
    				res[i][j]+=(a1[i][k]*a2[k][j]);
    			}
    		}
    	}
    	for(i=0;i<3;i++) {
    		for(j=0;j<3;j++) {
    			System.out.printf("%d ",res[i][j]);
    		}
    		System.out.println();
    	}
    }
}
