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
public class AssignmentsPerStudent {
    private long studentKey;
    private String firstName;
    private String lastName;
    private List <Assignment>assignmentsps;

    public AssignmentsPerStudent() {
    }

    public AssignmentsPerStudent(long studentKey, String firstName, String lastName, List<Assignment> assignmentsps) {
        this.studentKey = studentKey;
        this.firstName = firstName;
        this.lastName = lastName;
        this.assignmentsps = assignmentsps;
    }

    public List <Assignment> getAssignmentsps() {
        return assignmentsps;
    }

    public void setAssignmentsps(List <Assignment> assignmentsps) {
        this.assignmentsps = assignmentsps;
    }

    public long getStudentKey() {
        return studentKey;
    }

    public void setStudentKey(long studentKey) {
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
        sb.append("    Student's Key: ").append(studentKey);
        sb.append("\n").append(assignmentsps);
        return sb.toString();
    }
    
    
            
           
}
