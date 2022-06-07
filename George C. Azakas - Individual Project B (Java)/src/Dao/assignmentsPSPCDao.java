/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Assignment;
import Models.AssignmentsPerStudent;
import Models.AssignmentsPerStudentPerCourse;
import Util.DbUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dante_Fiero
 */
public class assignmentsPSPCDao {

    public static List<AssignmentsPerStudentPerCourse> getAllAssignmentsPerStudentPerCourse() {
        List<AssignmentsPerStudentPerCourse> assignmentsPSPC = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "select courseKey from courses";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            rs = ps.executeQuery();
            while (rs.next()) {
                assignmentsPSPC.add(getAssignmentsPerStudentPerCourseByCourseKeyWithoutConnection(rs.getInt(1), con));
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

        return (assignmentsPSPC);
    }

    public static boolean insertAssignmentsPerStudentPerCourse(AssignmentsPerStudentPerCourse apspc) {
        String sql = "insert into assignments_per_student_per_course values (?,?,?)";
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            for (AssignmentsPerStudent aps : apspc.getAssignmentspspc()) {
                for (Assignment assignment : aps.getAssignmentsps()) {
                    ps.setInt(1, assignment.getAssignmentKey());
                    ps.setLong(2, aps.getStudentKey());
                    ps.setInt(3, apspc.getCourseKey());
                    ps.executeUpdate();
                }
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
    
    public static AssignmentsPerStudentPerCourse getAssignmentsPerStudentPerCourseByCourseKeyWithoutConnection(int courseKey, Connection con) {
        AssignmentsPerStudentPerCourse apspc = new AssignmentsPerStudentPerCourse();
        String sql = "select courseKey, title from courses where courseKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            rs.next();
            apspc.setCourseKey(rs.getInt(1));
            apspc.setTitle(rs.getString(2));
            apspc.setAssignmentspspc(assignmentsPSDao.getAssignmentsPerStudentByCourseKeyWithoutConnection(courseKey, con));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (apspc);
    }
    
}
