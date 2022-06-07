/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

/**
 *
 * @author georg
 */
public class UIutils extends Input {

    public static boolean goNextYON() {
        System.out.println("Add more?(Type Yes or No.)");
        String yon = Input.inputText();
        Boolean goNext = null;
        while (goNext == null) {
            switch (yon) {
                case "Yes":
                    goNext = true;
                    break;
                case "No":
                    goNext = false;
                    break;
            }
        }
        return goNext;
    }
    
    public static boolean goNextYONShowMore() {
        System.out.println("Want to check more?(Type Yes or No.)");
        String yon = Input.inputText();
        Boolean goNext = null;
        while (goNext == null) {
            switch (yon) {
                case "Yes":
                    goNext = true;
                    break;
                case "No":
                    goNext = false;
                    break;
            }
        }
        return goNext;
    }
}
