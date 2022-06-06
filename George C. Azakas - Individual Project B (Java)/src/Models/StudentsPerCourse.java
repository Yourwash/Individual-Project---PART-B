/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.List;

/**
 *
 * @author Dante_Fiero
 */
public class StudentsPerCourse {
    private String title;
    private int courseKey;
    private List <Student> studentspc;

    public StudentsPerCourse() {
    }

    public StudentsPerCourse(String title, int coursekEY, List<Student> students) {
        this.title = title;
        this.courseKey = coursekEY;
        this.studentspc = students;
    }

    public List <Student> getStudentspc() {
        return studentspc;
    }

    public void setStudentspc(List <Student> studentspc) {
        this.studentspc = studentspc;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getCourseKey() {
        return courseKey;
    }

    public void setCourseKey(int courseKey) {
        this.courseKey = courseKey;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Course Key: ").append(courseKey);
        sb.append("    ").append(title);
        sb.append("\n").append(studentspc).append("\n");
        return sb.toString();
    }
   
}
