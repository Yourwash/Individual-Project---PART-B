/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author georg
 */
public class KeyGenerator {

//    All of these methods create a key, based on a count returned from mySQL. 
//    They check, if the key already exists in the database.
//    If it does, they raise it by one and check again.        

    public static int studentKeyGenerator() {
        
//        In this case the check is not used, becouse of a trigger in the database,
//        that changes the student key, based on the date of birth.

        int key = 0;
        Connection con = DbUtils.getConnection();
        String sql = "select count(studentKey) from students";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                key = rs.getInt(1) + 1001;               
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

        return (key);
    }

    public static int trainerKeyGenerator() {
        int key = 0;
        Connection con = DbUtils.getConnection();
        String sql = "select count(trainerKey) from trainers";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                key = rs.getInt(1) + 401;
                sql = "select trainerKey from trainers where trainerKey = ?";
                while (rs.next()) {
                    key = key + 1;
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
                    ps.setInt(1, key);

                }
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
                key = key - 1;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (key);
    }

    public static int courseKeyGenerator() {
        int key = 0;
        Connection con = DbUtils.getConnection();
        String sql = "select count(courseKey) from courses";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                key = rs.getInt(1) + 1;
                sql = "select courseKey from courses where courseKey = ?";
                while (rs.next()) {
                    key = key + 1;
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
                    ps.setInt(1, key);

                }
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
                key = key - 1;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (key);
    }

    public static int assignmentKeyGenerator() {
        int key = 0;
        Connection con = DbUtils.getConnection();
        String sql = "select count(assignmentKey) from assignments";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                key = rs.getInt(1) + 1;
                sql = "select assignmentKey from assignments where assignmentKey = ?";
                while (rs.next()) {
                    key = key + 1;
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
                    ps.setInt(1, key);

                }
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
                key = key - 1;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (key);
    }

    public static int subjectKeyGenerator() {
        int key = 0;
        Connection con = DbUtils.getConnection();
        String sql = "select count(subjectKey) from subjects";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                key = rs.getInt(1) + 1;
                sql = "select subjectKey from subjects where subjectKey = ?";
                while (rs.next()) {
                    key = key + 1;
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
                    ps.setInt(1, key);

                }
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
                key = key - 1;
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (key);
    }
}
