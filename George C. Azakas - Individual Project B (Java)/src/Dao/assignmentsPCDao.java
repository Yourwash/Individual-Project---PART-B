/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Models.Assignment;
import Models.AssignmentsPerCourse;
import Util.DbUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author georg
 */
public class assignmentsPCDao {

    public static List<AssignmentsPerCourse> getAllAssignmentsPerCourse() {
        List<AssignmentsPerCourse> apcList = null;
        Connection con = DbUtils.getConnection();
        String sql = "select courseKey from courses";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();
            apcList = new ArrayList<>();
            while (rs.next()) {
                apcList.add(getAssignmentsPerCourseByCourseKeyWithoutConnection(rs.getInt(1), con));
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

        return (apcList);
    }

    public static AssignmentsPerCourse getAssignmentsPerCourseByCourseKey(int courseKey) {
        List<Assignment> aList = null;
        AssignmentsPerCourse apc = null;
        Connection con = DbUtils.getConnection();
        String sql = "select assignmentKey,title from assignments_per_course_list where courseKey = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            apc = new AssignmentsPerCourse();
            rs = ps.executeQuery();
            if (rs.next()) {
                apc.setCourseKey(courseKey);
                apc.setTitle(rs.getString(2));
            }
            aList = new ArrayList<>();
            while (rs.next()) {
                aList.add(assignmentsDao.getAssignmentByKeyWithoutConnection(rs.getInt(1), con));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            if (apc != null) {
                apc.setAssignmentspc(aList);
            }
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
            } finally {
                apc.setAssignmentspc(aList);
            }
        }

        return (apc);
    }

    public static AssignmentsPerCourse getAssignmentsPerCourseByCourseKeyWithoutConnection(int courseKey, Connection con) {
        List<Assignment> aList = new ArrayList<>();
        AssignmentsPerCourse apc = new AssignmentsPerCourse();
        String sql = "select assignmentKey,title from assignments_per_course_list where courseKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            if (rs.next()) {
                apc.setCourseKey(courseKey);
                apc.setTitle(rs.getString(2));
                aList.add(assignmentsDao.getAssignmentByKeyWithoutConnection(rs.getInt(1), con));
            }
            while (rs.next()) {
                aList.add(assignmentsDao.getAssignmentByKeyWithoutConnection(rs.getInt(1), con));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            apc.setAssignmentspc(aList);
        }

        return (apc);
    }

}
