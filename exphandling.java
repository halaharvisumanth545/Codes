package com.sumanth.exam;
import java.util.*;
public class exphandling {
    public static void main(String args[]){
        Scanner sc=new Scanner(System.in);
        
        System.out.println("1-division\t2-assigning to an array of size 5");
        int n=sc.nextInt();
        try{//use of try-catch blocks
            switch(n){
                case 1: System.out.print("Enter the first number: ");
                        int a=sc.nextInt();
                        System.out.print("Enter the second number: ");
                        int b=sc.nextInt();
                        int res=a/b;
                        System.out.println("Result is :"+res);
                        break;
                case 2: int ar[]=new int[]{0,0,0,0,0};
                        System.out.print("Enter index:");
                        int in=sc.nextInt();
                        ar[in]=100;
                        break;
            }
            try{//nested try block
                int aa[]=new int[10];
                aa[100]=200;
            }catch(ArrayIndexOutOfBoundsException e){
                System.out.println("Index out of bounds..");
            }
        }catch(ArithmeticException e){//multiple catch clauses
            System.out.println("You are trying to divide a number by zero");
        }catch(ArrayIndexOutOfBoundsException e){
            System.out.println("Index has crossed the array size.");
        }finally{//use of finally block
            System.out.println("End of try-catch blocks...");
        }
        sc.close();

    }
}
