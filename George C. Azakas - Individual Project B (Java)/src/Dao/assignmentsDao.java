/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Assignment;
import java.util.List;
import Util.DbUtils;
import Util.Input;
import Util.UIutils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Dante_Fiero
 */
public class assignmentsDao {

    public static List getAllAssignments() {
        List<Assignment> aList = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "select assignmentKey from assignments";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareCall(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();
            while (rs.next()) {
                aList.add(getAssignmentByKeyWithoutConnection(rs.getInt(1), con));
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
        return (aList);
    }

    public static boolean insertAssignment(Assignment assingment) {
        Connection con = DbUtils.getConnection();
        String sql = "insert into assignments values (?,?,?,?,?,?)";
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            ps.setInt(1, assingment.getAssignmentKey());
            ps.setString(2, assingment.getTitle());
            ps.setString(3, assingment.getDescription());
            ps.setDate(4, (Date) assingment.getSubmisionDate());
            ps.setInt(5, assingment.getOralMark());
            ps.setInt(6, assingment.getTotalMark());
            ps.executeUpdate();
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

    public static Assignment getAssignmentByKey(int assignmentKey) {
        Assignment assignment = new Assignment();
        Connection con = DbUtils.getConnection();
        String sql = "select * from assignments where assignmentKey =?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, assignmentKey);
            rs = ps.executeQuery();
            if (rs.next()) {
                assignment.setAssignmentKey(assignmentKey);
                assignment.setTitle(rs.getString(2));
                assignment.setDescription(rs.getString(3));
                assignment.setSubmisionDate(rs.getDate(4));
                assignment.setOralMark(rs.getInt(5));
                assignment.setTotalMark(rs.getInt(6));
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

        return assignment;
    }  

    public static List<Assignment> userCreateAssignmentsList() {
        List<Assignment> aList = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        showStudentlessAssingmentsList(con);
        String sql = "select studentKey from students where studentKey = ?";
        do {
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, Input.inputInt());
                rs = ps.executeQuery();
                if (rs.next()) {
                    aList.add(getAssignmentByKeyWithoutConnection(rs.getInt(1), con));
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
        return (aList);
    }
    
     public static Assignment getAssignmentByKeyWithoutConnection(int assignmentKey, Connection con) {
        Assignment assignment = null;
        String sql = "select * from assignments where assignmentKey =?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, assignmentKey);
            rs = ps.executeQuery();
            if (rs.next()) {
                assignment = new Assignment(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getInt(6));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return assignment;
    }
    
    public static void showStudentlessAssingmentsList(Connection con) {
        String sql = "select * from studentless_assignments_list";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("For " + getAssignmentByKeyWithoutConnection(rs.getInt(1), con)
                        + " input " + rs.getLong(1) + ".");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
