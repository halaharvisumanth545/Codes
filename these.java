class Memory{
    static int i=100;
    private String name="Sumanth";
    public static void Show(){
        System.out.println("Sumanth Show");
    }
    class Childmemory{
        public static void smallShow(){
            System.out.println("Small Show");
        } 
    }
}
public class these{
    public static void main(String args[]){
        Childmemory cm=new Childmemory();
        smallShow();
        System.out.println(cm.name);
        System.out.println(cm.i);
    }
}