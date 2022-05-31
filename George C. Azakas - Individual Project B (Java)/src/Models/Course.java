/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;
import java.util.List;

/**
 *
 * @author Dante_Fiero
 */
public class Course {

    private int courseKey;
    private String title;
    private boolean type;
    private Date startDate;
    private Date endDate;
    private List<Subject> subjects;

    public Course() {
    }

    public Course(int courseKey, String title, boolean type, Date startDate, Date endDate, List<Subject> subjects) {
        this.courseKey = courseKey;
        this.title = title;
        this.type = type;
        this.startDate = startDate;
        this.endDate = endDate;
        this.subjects = subjects;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
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

    public boolean isType() {
        return type;
    }

    public void setType(boolean type) {
        this.type = type;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(title);
        if (type == true) {
            sb.append(" Part Time");
        }
        sb.append("    ").append("Course's Key: ").append(courseKey);
        sb.append("    Start Date: ").append(startDate);
        sb.append("    End Date: ").append(endDate).append("\n");
        sb.append(subjects).append("\n");
        return sb.toString();
    }

    public List<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }

}
