package com.samhitha;

public interface A {
    void show();
    void show1();
    void show2();
    default void show3() {
    	System.out.println("This is show3");
    }
    static void show4() {
    	System.out.println("This is show4");
    }
}
