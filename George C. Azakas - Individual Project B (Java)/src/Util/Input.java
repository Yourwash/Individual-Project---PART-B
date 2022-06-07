/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Util;

import Dao.assignmentsDao;
import Dao.assignmentsPSDao;
import Dao.assignmentsPSPCDao;
import Dao.coursesDao;
import Dao.studentsDao;
import Dao.studentsPCDao;
import Dao.subjectsDao;
import Dao.trainersDao;
import Dao.trainersPCDao;
import Models.Assignment;
import Models.AssignmentsPerStudentPerCourse;
import Models.Course;
import Models.Student;
import Models.StudentsPerCourse;
import Models.Trainer;
import Models.TrainersPerCourse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.Scanner;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
        Connection con = DbUtils.getConnection();
        Trainer trainer = new Trainer(trainerKeyGenerator(), inputText(), inputText(),
                subjectsDao.userCreateSubjectList());
        trainersDao.insertTrainer(trainer);
        System.out.println("Trainer has been added.");
    }

    public static void inputAssignment() {
        Assignment assignment = new Assignment(assignmentKeyGenerator(), inputText(), inputText(), inputDate());
        assignmentsDao.insertAssignment(assignment);
        System.out.println("Assignment has been added.");
    }

    public static void inputCourse() {
        Course course = new Course(courseKeyGenerator(), inputText(), inputBoolean(), inputDate(), inputDate(),
                subjectsDao.userCreateSubjectList());
        coursesDao.insertCourse(course);
        System.out.println("Course has beed added.");
    }

    public static void inputStudentsPerCourse() {
        Course course = coursesDao.selectCourse();
        StudentsPerCourse stp = new StudentsPerCourse(course.getTitle(), course.getCourseKey(),
                studentsDao.userCreateStudentList());
        studentsPCDao.insertStudentsPerCourse(stp);
        System.out.println("Students per course have beed added.");
    }

    public static void inputTrainersPerCourse() {
        Course course = coursesDao.selectCourse();
        TrainersPerCourse tpc = new TrainersPerCourse(course.getTitle(), course.getCourseKey(),
                trainersDao.userCreateTrainerList());
        trainersPCDao.insertTrainersPerCourse(tpc);
        System.out.println("Trainers per course have beed added.");
    }

    public static void inputAssignmentsPerStudentPerCourse() {
        Course course = coursesDao.selectCourse();
        AssignmentsPerStudentPerCourse apspc = new AssignmentsPerStudentPerCourse(course.getTitle(), course.getCourseKey(),
                assignmentsPSDao.userCreateAssignmentsPerStudentList());
        assignmentsPSPCDao.insertAssignmentsPerStudentPerCourse(apspc);
        System.out.println("Assingments per student per course have beed added.");
    }

}
