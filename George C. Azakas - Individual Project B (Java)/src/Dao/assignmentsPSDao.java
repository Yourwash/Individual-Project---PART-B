/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Assignment;
import Models.AssignmentsPerStudent;
import Models.Student;
import Util.DbUtils;
import Util.Input;
import Util.UIutils;
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
public class assignmentsPSDao {

    public static List<AssignmentsPerStudent> getAllAssignmentsPerStudent() {
        List<AssignmentsPerStudent> apsList = null;
        Connection con = DbUtils.getConnection();
        String sql = "select studentKey from students";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();
            apsList = new ArrayList<>();
            while (rs.next()) {
                apsList.add(getAssignmentsPerStudentByStudentKeyWithoutConnection(rs.getLong(1), con));
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

        return (apsList);
    }

    public static List<AssignmentsPerStudent> getAssignmentsPerStudentByCourseKey(int courseKey) {
        List<AssignmentsPerStudent> apsList = null;
        Connection con = DbUtils.getConnection();
        String sql = "select spc_studentKey from students_per_course where spc_courseKey = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            apsList = new ArrayList<>();
            while (rs.next()) {
                apsList.add(getAssignmentsPerStudentByStudentKeyWithoutConnection(rs.getLong(1), con));
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

        return (apsList);
    }

    public static List<AssignmentsPerStudent> userCreateAssignmentsPerStudentList() {
        List<AssignmentsPerStudent> apsList = new ArrayList<>();
        AssignmentsPerStudent aps = new AssignmentsPerStudent();
        Student student;
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        studentsDao.showAssignmentlessStudentsList(con);
        String sql = "select studentKey from students where studentKey = ?";
        do {
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, Input.inputInt());
                rs = ps.executeQuery();
                if (rs.next()) {
                    student = studentsDao.getStudentByKeyWithoutConnection(rs.getLong(1), con);
                    aps.setStudentKey(rs.getLong(1));
                    aps.setFirstName(student.getFirstName());
                    aps.setLastName(student.getLastName());
                    aps.setAssignmentsps(assignmentsDao.userCreateAssignmentsList());
                    apsList.add(aps);
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
        return (apsList);
    }

    public static AssignmentsPerStudent getAssignmentsPerStudentByStudentKey(Long studentKey) {
        AssignmentsPerStudent aps = new AssignmentsPerStudent();
        Connection con = DbUtils.getConnection();
        String sql = "select * from assignments_per_student_per_course_list where studentKey = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            rs = ps.executeQuery();
            rs.next();
            aps.setStudentKey(rs.getLong(9));
            aps.setFirstName(rs.getString(7));
            aps.setLastName(rs.getString(8));
            aps.setAssignmentsps(getAssignmentsByStudentKeyWithoutConnection(studentKey, con));
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
        return (aps);
    }

    public static AssignmentsPerStudent getAssignmentsPerStudentByStudentKeyAndCourseKey(Long studentKey, int courseKey) {
        AssignmentsPerStudent aps = new AssignmentsPerStudent();
        Connection con = DbUtils.getConnection();
        String sql = "select * from assignments_per_student_per_course_list where studentKey = ? and courseKey = ?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            ps.setLong(2, courseKey);
            rs = ps.executeQuery();
            rs.next();
            aps.setStudentKey(rs.getLong(9));
            aps.setFirstName(rs.getString(7));
            aps.setLastName(rs.getString(8));
            aps.setAssignmentsps(getAssignmentsByStudentKeyAndCourseKeyWithoutConnection(studentKey, courseKey, con));
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
        return (aps);
    }

    public static AssignmentsPerStudent getAssignmentsPerStudentByStudentKeyWithoutConnection(Long studentKey, Connection con) {
        AssignmentsPerStudent aps = new AssignmentsPerStudent();
        String sql = "select * from assignments_per_student_per_course_list where studentKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            rs = ps.executeQuery();
            rs.next();
            aps.setStudentKey(rs.getLong(9));
            aps.setFirstName(rs.getString(7));
            aps.setLastName(rs.getString(8));
            aps.setAssignmentsps(getAssignmentsByStudentKeyWithoutConnection(studentKey, con));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (aps);
    }

    public static AssignmentsPerStudent getAssignmentsPerStudentByStudentKeyAndCourseWithoutConnection(Long studentKey, int courseKey, Connection con) {
        AssignmentsPerStudent aps = new AssignmentsPerStudent();
        String sql = "select * from assignments_per_student_per_course_list where studentKey = ? and courseKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            ps.setLong(2, courseKey);
            rs = ps.executeQuery();
            rs.next();
            aps.setStudentKey(rs.getLong(9));
            aps.setFirstName(rs.getString(7));
            aps.setLastName(rs.getString(8));
            aps.setAssignmentsps(getAssignmentsByStudentKeyAndCourseKeyWithoutConnection(studentKey, courseKey, con));
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (aps);
    }

    public static List<Assignment> getAssignmentsByStudentKeyWithoutConnection(Long studentKey, Connection con) {
        List<Assignment> assignments = new ArrayList<>();
        Assignment assignment;
        String sql = "select * from assignments_per_student_per_course_list where studentKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            rs = ps.executeQuery();
            while (rs.next()) {
                assignment = new Assignment(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getInt(6));
                assignments.add(assignment);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (assignments);
    }

    public static List<AssignmentsPerStudent> getAssignmentsPerStudentByCourseKeyWithoutConnection(int courseKey, Connection con) {
        List<AssignmentsPerStudent> apsList = null;
        String sql = "select spc_studentKey from students_per_course where spc_courseKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            apsList = new ArrayList<>();
            while (rs.next()) {
                apsList.add(getAssignmentsPerStudentByStudentKeyWithoutConnection(rs.getLong(1), con));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (apsList);
    }

    public static List<Assignment> getAssignmentsByStudentKeyAndCourseKeyWithoutConnection(Long studentKey, int courseKey, Connection con) {
        List<Assignment> assignments = new ArrayList<>();
        Assignment assignment;
        String sql = "select * from assignments_per_student_per_course_list where studentKey = ? and courseKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            ps.setLong(2, courseKey);
            rs = ps.executeQuery();
            while (rs.next()) {
                assignment = new Assignment(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getInt(5),
                        rs.getInt(6));
                assignments.add(assignment);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (assignments);
    }

}
