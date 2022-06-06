/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import Dao.assignmentsDao;
import Dao.coursesDao;
import Dao.studentsDao;
import Dao.subjectsDao;
import Dao.trainersDao;
import Models.Assignment;
import Models.Course;
import Models.Student;
import Models.Trainer;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.Scanner;

/**
 *
 * @author Dante_Fiero
 */
public class Input extends KeyGenerator {

//    Validates users input through out all of the program.
    public static String inputText() {
        Scanner sc = new Scanner(System.in);
        String tempString = "";
        try {
            tempString = sc.nextLine();
            return (tempString);

        } catch (Exception e) {
            System.out.println("Input text please.");
        }
        return (tempString);
    }

    public static Date inputDate() {
        Scanner sc = new Scanner(System.in);
        Date tempDate = null;
        SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
        boolean goNext = false;
        while (goNext == false) {
            try {
                tempDate = new Date(sdf.parse(sc.nextLine()).getTime());
                goNext = true;
            } catch (ParseException ex) {
                System.out.println("Input a date in this format (Day-Month-Year) please.");
            }

        }

        return (tempDate);
    }

    public static int inputInt() {
        Scanner sc = new Scanner(System.in);
        int tempInt = 0;
        boolean goNext = false;
        while (goNext == false) {
            try {
                tempInt = sc.nextInt();
                goNext = true;
                return (tempInt);

            } catch (Exception e) {
                System.out.println("Input an integer please.");
            }
        }
        return (tempInt);
    }

    public static boolean inputBoolean() {
        Scanner sc = new Scanner(System.in);
        boolean tempBoolean = false;
        boolean goNext = false;
        while (goNext == false) {
            try {
                tempBoolean = sc.nextBoolean();
                goNext = true;
                return (tempBoolean);

            } catch (Exception e) {
                System.out.println("Input true or false please.");
                sc.next();
            }
        }
        return (tempBoolean);
    }

    public static double inputDouble() {
        Scanner sc = new Scanner(System.in);
        double tempDouble = 0;
        boolean goNext = false;
        while (goNext == false) {
            try {
                tempDouble = sc.nextDouble();
                goNext = true;
                return (tempDouble);

            } catch (Exception e) {
                System.out.println("Input a number please.");
            }
        }
        return (tempDouble);
    }

    public static void inputStudent() {
        Student student = new Student(studentKeyGenerator(), inputText(), inputText(), inputDate(), inputDouble());
        studentsDao.insertStudent(student);
        System.out.println("Student has been added.");
    }

    public static void inputTrainer() {
        Trainer trainer = new Trainer(trainerKeyGenerator(), inputText(), inputText(), subjectsDao.userCreateSubjectList());
        trainersDao.insertTrainer(trainer);
        System.out.println("Trainer has been added.");
    }

    public static void inputAssignment() {
        Assignment assignment = new Assignment(assignmentKeyGenerator(), inputText(), inputText(), inputDate());
        assignmentsDao.insertAssignment(assignment);
        System.out.println("Assignment has been added.");
    }

    public static void inputCourse() {
        Course course = new Course(courseKeyGenerator(), inputText(), inputBoolean(), inputDate(), inputDate(), subjectsDao.userCreateSubjectList());
        coursesDao.insertCourse(course);
        System.out.println("Course has beed added.");
    }

    public static void inputStudentSPerCourse() {
    }

    public static void inputTrainerSPerCours() {
    }

    public static void inputAssignmentsPerStudentPerCourse() {
    }

}
