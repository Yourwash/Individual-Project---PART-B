/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.B;

import UI.InputMenu;
import UI.ListOutputMenu;
import Util.Input;
import Util.UIutils;

/**
 *
 * @author Dante_Fiero
 */
public class GeorgeCAzakasIndividualProjectB {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        do {
            System.out.println("To see a list type 1");
            System.out.println("To input data type 2");
            switch (Input.inputInt()) {
                case 1: {
                    ListOutputMenu.listOutputMenu();
                }
                case 2: {
                    InputMenu.InputMenu();
                }
            }
        } while (UIutils.goNextYONShowMore());

    }

}
