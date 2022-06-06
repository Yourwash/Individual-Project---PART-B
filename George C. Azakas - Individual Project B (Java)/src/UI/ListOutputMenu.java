package UI;

import Dao.assignmentsDao;
import Dao.assignmentsPCDao;
import Dao.assignmentsPSPCDao;
import Dao.coursesDao;
import Dao.returneeSDao;
import Dao.studentsDao;
import Dao.studentsPCDao;
import Dao.trainersDao;
import Dao.trainersPCDao;
import Util.Input;
import Util.UIutils;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author georg
 */
public class ListOutputMenu extends UIutils {

    public static void listOutputMenu() {
        boolean goNext = false;
        while (goNext == false) {
            goNext = false;
            while (goNext == false) {
                System.out.println("Which list would you like to print?"
                        + " Type the names as follows: Student List, Trainer List,"
                        + " Assignment List, Course List, Students per Course List,"
                        + " Trainers per Course List, Assignments per Course List,"
                        + " Assignment per Student List, Returnee Student List");            
                switch (Input.inputText()) {
                    case "Student List":
                        System.out.println(studentsDao.getAllStudents());
                        goNext = true;
                        break;
                    case "Trainer List":
                        System.out.println(trainersDao.getAllTrainers());
                        goNext = true;
                        break;
                    case "Assignment List":
                        System.out.println(assignmentsDao.getAllAssignments());
                        goNext = true;
                        break;
                    case "Course List":
                        System.out.println(coursesDao.getAllCourses());
                        goNext = true;
                        break;
                    case "Students per Course List":
                        System.out.println(studentsPCDao.getAllStudentsPerCourse());
                        goNext = true;
                        break;
                    case "Trainers per Course List":
                        System.out.println(trainersPCDao.getAllTrainersPerCourse());
                        goNext = true;
                        break;
                    case "Assignments per Course List":
                        System.out.println(assignmentsPCDao.getAllAssignmentsPerCourse());
                        goNext = true;
                        break;
                    case "Assignment per Student per Course List":
                        System.out.println(assignmentsPSPCDao.getAllAssignmentsPerStudentPerCourse());
                        goNext = true;
                        break;
                    case "Returnee Student List":
                        System.out.println(returneeSDao.getAllReturneeStudents());
                        goNext = true;
                        break;

                }
            }
            goNext = false;
            System.out.println("Would like to check another list? Type 'Yes', if not type 'No':");
            goNextYON();

        }
    }
}
