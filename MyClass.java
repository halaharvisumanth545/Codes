public class MyClass implements MyInterface{
     public static void main(String args[]){
         MyClass mc=new MyClass();
         int res=mc.cube(20);
         System.out.println("Cube of "+20+" is "+res);
         res=mc.square(20);
         System.out.println("Sqaure of "+20+" is "+res);
         System.out.println(mc.c);
     }
     public  int cube(int x){
         return (x*x*x);
     }
     public int square(int x){
         return (x*x);
     }
     public int num(int n){
         return n;
     }
}
     