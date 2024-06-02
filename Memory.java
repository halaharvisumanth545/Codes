class Memory{
    static int i=100;
    private String name="Sumanth";
    public void Show(){
        System.out.println("Sumanth Show");
    }
    class Childmemory{
        public void smallShow(){
            System.out.println("Small Show");
        } 
        public static void main(String args[]){
            Memory.Childmemory ob=Memory.new Childmemory();
            System.out.println(ob.i);
            System.out.println(ob.name);
        }
    }
}
