/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

/**
 *
 * @author georg
 */
public class UIutils extends Input{
    public static boolean goNextYON(){
        System.out.println("Add more?(Type Yes or No.)");
        String yon = Input.inputText();
        Boolean goNext = null;
        switch (yon) {
                case "Yes":
                    goNext = false;
                    break;
                case "No":
                    goNext = true;
                    break;
            }
    return goNext;
    }
}
