package com.sumanth.exam;
class Sumanth extends Exception{
}
class ex {
    public int cube(int n)throws Sumanth{
        if(n>0) return (n*n*n);
        else throw new Sumanth();
    }
}
public class ownexception{
    public static void main(String args[]){
        int a=Integer.parseInt(args[0]);
        try{
            ex c=new ex();
            c.cube(a);
        }catch(Sumanth e){
            System.out.println("Please enter a number greater than zero.");
        }
    }
}
