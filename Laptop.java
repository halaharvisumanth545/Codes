package com.samhitha;

public interface Laptop {
    void copy();
    void paste();
    void cut();
    default void msd() {
    	System.out.println("Mahendra Singh Dhoni");
    }
    static void dress() {
    	System.out.println("This is my dress");
    }
}
