/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Date;

/**
 *
 * @author Dante_Fiero
 */
public class Student {

    private long studentKey;
    private String firstName;
    private String lastName;
    private Date dob;
    private double tuitionFees;

    public Student() {
    }

    public Student(long studentKey, String firstName, String lastName, Date dob, double tuitionFees) {
        this.studentKey = studentKey;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.tuitionFees = tuitionFees;
    }

    public Student(String firstName, String lastName, Date dob, double tuitionFees) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.dob = dob;
        this.tuitionFees = tuitionFees;
    }

    public double getTuitionFees() {
        return tuitionFees;
    }

    public void setTuitionFees(double tuitionFees) {
        this.tuitionFees = tuitionFees;
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

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Student's Key: ").append(studentKey);
        sb.append("    ").append(firstName).append(" ").append(lastName);
        sb.append("    Date of Birth: ").append(dob);
        sb.append("    Tuition Fees").append(tuitionFees).append("\n");
        return sb.toString();
    }

}
