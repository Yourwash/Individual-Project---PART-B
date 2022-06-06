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
public class AssignmentsPerCourse {
    private int courseKey;
    private String title;
    private List <Assignment>assignmentspc;

    public AssignmentsPerCourse() {
    }

    public AssignmentsPerCourse(int courseKey, String title, List<Assignment> assignmentspc) {
        this.courseKey = courseKey;
        this.title = title;
        this.assignmentspc = assignmentspc;
    }

    public int getCourseKey() {
        return courseKey;
    }

    public void setCourseKey(int courseKey) {
        this.courseKey = courseKey;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List <Assignment> getAssignmentspc() {
        return assignmentspc;
    }

    public void setAssignmentspc(List <Assignment> assignmentspc) {
        this.assignmentspc = assignmentspc;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Course Key: ").append(courseKey);
        sb.append("    ").append(title);
        sb.append("\n").append(assignmentspc).append("\n");
        return sb.toString();
    }
 
}
