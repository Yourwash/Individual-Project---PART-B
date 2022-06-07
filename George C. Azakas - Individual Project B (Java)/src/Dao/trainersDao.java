/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import static Dao.studentsDao.getStudentByKeyWithoutConnection;
import static Dao.studentsDao.showCourselessStudentsList;
import Models.Student;
import Models.Subject;
import Models.Trainer;
import Util.DbUtils;
import Util.Input;
import Util.UIutils;
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
public class trainersDao {

    public static List<Trainer> getAllTrainers() {
        List<Trainer> result = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "select trainerKey from trainers";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();
            while (rs.next()) {
                result.add(getTrainerByKeyWithoutConnection(rs.getInt(1), con));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
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

        return (result);
    }

    public static boolean insertTrainer(Trainer trainer) {
        Connection con = DbUtils.getConnection();
        String sql = "insert into trainers values (?,?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, trainer.getTrainerKey());
            ps.setString(2, trainer.getFirstName());
            ps.setString(3, trainer.getLastName());
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        sql = "insert into trainers_has_subjects values (?,?)";
        ps = null;
        try {
            for (Subject s : trainer.getSubjects()) {
                ps = con.prepareStatement(sql);
                ps.setInt(1, trainer.getTrainerKey());
                ps.setInt(2, s.getSubjectKey());
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

    public static Trainer getTrainerByKey(int trainerKey) {
        Trainer trainer;
        Connection con = DbUtils.getConnection();
        trainer = getTrainerInfoByKeyWithoutConnection(trainerKey, con, getTrainerSubjectsWithoutConnection(trainerKey, con));
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return trainer;
    }

    public static Trainer getTrainerByKeyWithoutConnection(int trainerKey, Connection con) {
        Trainer trainer;
        trainer = getTrainerInfoByKeyWithoutConnection(trainerKey, con, getTrainerSubjectsWithoutConnection(trainerKey, con));
        return trainer;
    }

    public static List<Subject> getTrainerSubjectsWithoutConnection(int trainerKey, Connection con) {
        List<Subject> subjects = new ArrayList<>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Subject s;
        String sql = "select * from trainer_has_subject_list where ths_trainerKey =?";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, trainerKey);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Subject(rs.getInt(1), rs.getString(2));
                subjects.add(s);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(trainersDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return subjects;
    }

    public static Trainer getTrainerInfoByKeyWithoutConnection(int trainerKey, Connection con, List<Subject> subjects) {
        Trainer t = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from trainers where trainerKey =?";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, trainerKey);
            rs = ps.executeQuery();
            rs.next();
            t = new Trainer(rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    subjects);
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(trainersDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return (t);
    }

    public static List<Trainer> userCreateTrainerList() {
        List<Trainer> tList = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        showTrainerList(con);
        String sql = "select trainerKey from trainers where trainerKey = ?";
        do {
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, Input.inputInt());
                rs = ps.executeQuery();
                if (rs.next()) {
                    tList.add(getTrainerByKeyWithoutConnection(rs.getInt(1), con));
                }
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } while (UIutils.goNextYON());
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
        return (tList);
    }

    public static void showTrainerList(Connection con) {
        String sql = "select * from trainers";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("For " + rs.getString(2) + " " + rs.getString(3) + " input " + rs.getInt(1) + ".");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
