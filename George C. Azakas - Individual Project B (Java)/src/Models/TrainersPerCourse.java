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
public class TrainersPerCourse {

    private String title;
    private int courseKey;
    private List<Trainer> trainerspc;

    public TrainersPerCourse() {
    }

    public TrainersPerCourse(String title, int courseKey, List<Trainer> trainerspc) {
        this.title = title;
        this.courseKey = courseKey;
        this.trainerspc = trainerspc;
    }

    public List<Trainer> getTrainerspc() {
        return trainerspc;
    }

    public void setTrainerspc(List<Trainer> trainerspc) {
        this.trainerspc = trainerspc;
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
        sb.append("\n").append(trainerspc);
        return sb.toString();
    }

}
