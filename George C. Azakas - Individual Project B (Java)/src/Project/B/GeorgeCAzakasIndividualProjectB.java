/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.B;

import Dao.coursesDao;
import Models.Course;
import Models.Subject;
import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Dante_Fiero
 */
public class GeorgeCAzakasIndividualProjectB {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        List<Subject> s = new ArrayList<>();
        Subject e = new Subject(1, "Java");
        s.add(e);
        Course course;
        Date d1 = new Date(1995,04,19);
        Date d2 = new Date(1995,07,19);
        course = new Course(6, "George", true, d1, d1, s);
        System.out.println(coursesDao.insertCourse(course));
    }

}
