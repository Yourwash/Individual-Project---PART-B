/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author Dante_Fiero
 */
public class Subject {
    private int subjectKey;
    private String title;

    public Subject() {
    }

    public Subject(int subjectKey, String title) {
        this.subjectKey = subjectKey;
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getSubjectKey() {
        return subjectKey;
    }

    public void setSubjectKey(int subjectKey) {
        this.subjectKey = subjectKey;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(title).append("    ").append("Subject's Key: ").append(subjectKey);
        return sb.toString();
    }
    
    
    
}
