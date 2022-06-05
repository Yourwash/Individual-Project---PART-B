/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.Date;

/**
 *
 * @author Dante_Fiero
 */
public class Assignment {

    private int assignmentKey;
    private String title;
    private String Description;
    private Date submisionDate;
    private int oralMark;
    private int totalMark = 101;

    public Assignment() {
    }

    public Assignment(int assignmentKey, String title, String Description, Date submisionDate, int oralMark, int totalMark) {
        this.assignmentKey = assignmentKey;
        this.title = title;
        this.Description = Description;
        this.submisionDate = submisionDate;
        this.oralMark = oralMark;
        this.totalMark = totalMark;
    }

    public Assignment(String title, String Description, Date submisionDate) {
        this.title = title;
        this.Description = Description;
        this.submisionDate = submisionDate;
    }

    public int getTotalMark() {
        return totalMark;
    }

    public void setTotalMark(int totalMark) {
        this.totalMark = totalMark;
    }

    public int getAssignmentKey() {
        return assignmentKey;
    }

    public void setAssignmentKey(int assignmentKey) {
        this.assignmentKey = assignmentKey;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public Date getSubmisionDate() {
        return submisionDate;
    }

    public void setSubmisionDate(Date submisionDate) {
        this.submisionDate = submisionDate;
    }

    public int getOralMark() {
        return oralMark;
    }

    public void setOralMark(int oralMark) {
        this.oralMark = oralMark;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (totalMark != 101) {
            sb.append("Assignment's Key: ").append(assignmentKey).append("   ").append(title);
            sb.append("    Submission Date: ").append(submisionDate);
            sb.append("    ").append(Description).append("\n");
        } else {
            sb.append("Key: ").append(assignmentKey).append("   ").append(title);
            sb.append("    Submission Date: ").append(submisionDate);
            sb.append("\n").append(Description);
            sb.append("\n").append("Oral Mark: ").append(oralMark).append("  Total Mark: ").append(totalMark);
        }
        return sb.toString();
    }

}
