/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

import java.util.List;

/**
 *
 * @author georg
 */
public class ReturneeStudent {
    private Long studentKey;
    private String firstName;
    private String lastName;
    private List <Course> courses;

    public ReturneeStudent() {
    }

    public ReturneeStudent(Long studentKey, String firstName, String lastName, List<Course> courses) {
        this.studentKey = studentKey;
        this.firstName = firstName;
        this.lastName = lastName;
        this.courses = courses;
    }

    public List <Course> getCourses() {
        return courses;
    }

    public void setCourses(List <Course> courses) {
        this.courses = courses;
    }

    public Long getStudentKey() {
        return studentKey;
    }

    public void setStudentKey(Long studentKey) {
        this.studentKey = studentKey;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(firstName);
        sb.append(" ").append(lastName);
        sb.append("    StudentKey: ").append(studentKey);
        sb.append("\n").append(courses);
        return sb.toString();
    }
    
    
}
