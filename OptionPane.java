package com.sumanth.exam;
import javax.swing.*;
public class OptionPane{
    public static void main(String args[]){
        String options="1-addition\n2-subtraction\n3-multiplication\n4-division";
        String option=JOptionPane.showInputDialog(options);
        int op=Integer.parseInt(option);
        if(op==1||op==2||op==3||op==4){
            String input1=JOptionPane.showInputDialog("Enter the first number: ");
            String input2=JOptionPane.showInputDialog("Enter the second number: ");
            float a=Float.parseFloat(input1);
            float b=Float.parseFloat(input2);
	    float res=0;
	    switch(op){
                case 1: res=a+b;
                        JOptionPane.showMessageDialog(null,"Result: "+res);
                        break;
                case 2: res=a-b;
                        JOptionPane.showMessageDialog(null,"Result: "+res);
                        break;
                case 3: res=a*b;
                        JOptionPane.showMessageDialog(null,"Result: "+res);
                        break;
                case 4: if(b!=0){
		            res=a/b;
                            JOptionPane.showMessageDialog(null,"Result: "+res);
                            break;
		        }else{
                            JOptionPane.showMessageDialog(null,"Cannot divide a number by 0\nPLEASE TRY AGAIN");
                            return;
                        }
            }
        }else{
            JOptionPane.showMessageDialog(null,"Enter valid option");
        }
    }
}