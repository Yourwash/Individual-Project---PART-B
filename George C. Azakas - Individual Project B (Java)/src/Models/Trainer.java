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
public class Trainer {
    private int trainerKey;
    private String firstName;
    private String lastName;
    private List<Subject> subjects;

    public Trainer() {
    }

    public Trainer(int trainerKey, String firstName, String lastName, List<Subject> subjects) {
        this.trainerKey = trainerKey;
        this.firstName = firstName;
        this.lastName = lastName;
        this.subjects = subjects;
    }

    

    public List<Subject> getSubjects() {
        return subjects;
    }

    public void setSubjects(List<Subject> subjects) {
        this.subjects = subjects;
    }

    public int getTrainerKey() {
        return trainerKey;
    }

    public void setTrainerKey(int trainerKey) {
        this.trainerKey = trainerKey;
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
        sb.append(" ").append(lastName).append("    ");
        sb.append("Trainer's Key: ").append(trainerKey);
        sb.append("\n").append(subjects).append("\n");
        return sb.toString();
    }
    
    
    
    
}
