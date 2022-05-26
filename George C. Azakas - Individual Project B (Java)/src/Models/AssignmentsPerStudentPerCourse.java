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
public class AssignmentsPerStudentPerCourse {
    private int courseKey;
    private String title;
    private List<AssignmetsPerStudent> assignmentspspc;

    public AssignmentsPerStudentPerCourse() {
    }

    public AssignmentsPerStudentPerCourse(String title, int courseKey, List<AssignmetsPerStudent> assignmentspspc) {
        this.title = title;
        this.courseKey = courseKey;
        this.assignmentspspc = assignmentspspc;
    }

    public List<AssignmetsPerStudent> getAssignmentspspc() {
        return assignmentspspc;
    }

    public void setAssignmentspspc(List<AssignmetsPerStudent> assignmentspspc) {
        this.assignmentspspc = assignmentspspc;
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
        sb.append("\n").append(assignmentspspc);
        return sb.toString();
    }
    
    
}
