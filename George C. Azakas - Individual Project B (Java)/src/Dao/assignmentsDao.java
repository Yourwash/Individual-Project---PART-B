/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Assignment;
import java.util.List;
import Util.DbUtils;
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
        List<Assignment> result = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "select assignmentKey from assignments";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = con.prepareCall(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
              while (rs.next()) {
                Assignment s = new Assignment(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getInt(6));
                result.add(s);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            
        }finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (result);
    }

    public static boolean insertStudent(Assignment assingment) {
        Connection con = DbUtils.getConnection();
        String sql = "insert into assignment values (?,?,?,?,?,?)";
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
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return true;
    }

    public static Assignment getAssignmentByKey(int assignmentKey) {
        Assignment assignment = null;
        Connection con = DbUtils.getConnection();
        String sql = "select * from assignment where assignmentKey =?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, assignmentKey);
            rs = ps.executeQuery();
            rs.next();
            assignment = new Assignment(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getInt(6));
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return assignment;
    }
}
