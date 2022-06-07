package UI;

import Util.Input;
import Util.UIutils;
import static Util.UIutils.goNextYON;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author georg
 */
public class InputMenu extends UIutils {

    public static void InputMenu() {     
            do {
                System.out.println("To input a student type 1.");
                System.out.println("For a trainer type 2.");
                System.out.println("For an assignment type 3.");
                System.out.println("For a course type 4.");
                System.out.println("For students per course type 5.");
                System.out.println("For trainers per course type 6.");
                System.out.println("For assignments per student per course type 7.");

                switch (Input.inputInt()) {
                    case 1:
                        System.out.println("Type Students First Name, Last Name,"
                                + " Date of Birth and Tuitions Fees.After each input press enter.");
                        Input.inputStudent();
                        break;
                    case 2:
                        System.out.println("Type Trainers First Name and Last Name"
                                + ". After each input press enter.");
                        Input.inputTrainer();
                        break;
                    case 3:
                        System.out.println("Type Assignemnts Title, Description and Submission Date"
                                + ". After each input press enter.");
                        Input.inputAssignment();
                        break;
                    case 4:
                        System.out.println("Type Courses Title, Type (If it's part time type true, otherwise type false. ),"
                                + " Starting Date and Ending Date"
                                + ". After each input press enter.");
                        Input.inputCourse();
                        break;
                    case 5:
                        Input.inputStudentsPerCourse();
                        break;
                    case 6:
                        Input.inputTrainersPerCourse();
                        break;
                    case 7:
                        Input.inputAssignmentsPerStudentPerCourse();
                        break;
                }
            } while (goNextYON());
        }
    }
