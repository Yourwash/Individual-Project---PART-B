/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Project.B;

import Dao.studentsDao;
import Dao.studentsPCDao;
import Models.Student;
import java.sql.Date;

/**
 *
 * @author Dante_Fiero
 */
public class GeorgeCAzakasIndividualProjectB {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args){
        // TODO code application logic here
        Date d = new Date(1995,04,19);
        Student s = new Student(1151,"George","Azakas",d,2250);
        
        System.out.println(studentsDao.insertStudent(s));
    }
    
}
