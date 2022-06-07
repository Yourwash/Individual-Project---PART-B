/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Trainer;
import Models.TrainersPerCourse;
import Util.DbUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Dante_Fiero
 */
public class trainersPCDao {

    public static TrainersPerCourse getTrainersPerCourse(int courseKey) {
        List<Trainer> trainers = new ArrayList<>();
        TrainersPerCourse tpc = null;
        Connection con = DbUtils.getConnection();
        String sql = "select * from trainers_per_course_List where course_Key = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        String title = null;
        int key = 0;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            title = rs.getString(4);
            key = rs.getInt(5);

            while (rs.next()) {
                trainers.add(trainersDao.getTrainerByKeyWithoutConnection(rs.getInt(3), con));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                tpc = new TrainersPerCourse(title,
                        key,
                        trainers);
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (tpc);
    }

    public static List<TrainersPerCourse> getAllTrainersPerCourse() {
        List<TrainersPerCourse> tpcList = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "Select courseKey from courses";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();
            while (rs.next()) {
                tpcList.add(getTrainersPerCourseWithoutConnection(rs.getInt(1), con));

            }
        } catch (SQLException ex) {
            Logger.getLogger(trainersPCDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return (tpcList);
    }

    public static TrainersPerCourse getTrainersPerCourseWithoutConnection(int courseKey, Connection con) {
        List<Trainer> trainers = new ArrayList<>();
        TrainersPerCourse tpc;
        String sql = "select * from trainers_per_course_list where courseKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        String title = null;
        int key = 0;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            rs.next();
            title = rs.getString(4);
            key = rs.getInt(5);
            trainers.add(trainersDao.getTrainerByKey(rs.getInt(3)));
            while (rs.next()) {
                trainers.add(trainersDao.getTrainerByKey(rs.getInt(3)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            tpc = new TrainersPerCourse(title,
                    key,
                    trainers);
        }

        return (tpc);
    }

    public static boolean insertTrainersPerCourse(TrainersPerCourse tpc) {
        String sql = "insert into trainers_per_course values (?,?)";
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            for(Trainer trainer: tpc.getTrainerspc()){
            ps.setInt(1, trainer.getTrainerKey());
            ps.setInt(2, tpc.getCourseKey());
            ps.executeUpdate();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return true;
    }
    
    public static boolean insertTrainersPerCourseWithoutConnection(TrainersPerCourse tpc, Connection con) {
        String sql = "insert into trainers_per_course values (?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            for(Trainer trainer: tpc.getTrainerspc()){
            ps.setInt(1, trainer.getTrainerKey());
            ps.setInt(2, tpc.getCourseKey());
            ps.executeUpdate();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return true;
    }
}
