/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Student;
import Models.StudentsPerCourse;
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
public class studentsPCDao {

    public static StudentsPerCourse getStudentsPerCourse(int courseKey) {
        List<Student> students = new ArrayList<>();
        StudentsPerCourse spc = null;
        Connection con = DbUtils.getConnection();
        String sql = "select * from students_per_course_List where course_Key = ?";
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
                students.add(studentsDao.getStudentByKey(rs.getLong(3)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                spc = new StudentsPerCourse(title,
                        key,
                        students);
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }

        return (spc);
    }

    public static List<StudentsPerCourse> getAllStudentsPerCourse() {
        List<StudentsPerCourse> spcList = new ArrayList<>();
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
                spcList.add(getStudentsPerCourseWithoutConnection(rs.getInt(1), con));

            }
        } catch (SQLException ex) {
            Logger.getLogger(studentsPCDao.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                con.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }

        }
        return (spcList);
    }

    public static StudentsPerCourse getStudentsPerCourseWithoutConnection(int courseKey, Connection con) {
        List<Student> students = new ArrayList<>();
        StudentsPerCourse spc;
        String sql = "select * from students_per_course_list where courseKey = ?";
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
            students.add(studentsDao.getStudentByKey(rs.getLong(3)));
            while (rs.next()) {
                students.add(studentsDao.getStudentByKey(rs.getLong(3)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            spc = new StudentsPerCourse(title,
                    key,
                    students);
        }

        return (spc);
    }

    public static boolean insertStudentsPerCourse(StudentsPerCourse stp) {
        String sql = "insert into students_per_course values (?,?)";
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            for (Student student : stp.getStudentspc()) {
                ps.setLong(1, student.getStudentKey());
                ps.setInt(2, stp.getCourseKey());
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

    public static boolean insertStudentsPerCourseWithoutConnection(StudentsPerCourse stp, Connection con) {
        String sql = "insert into students_per_course values (?,?)";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            for (Student student : stp.getStudentspc()) {
                ps.setLong(1, student.getStudentKey());
                ps.setInt(2, stp.getCourseKey());
                ps.executeUpdate();
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return true;
    }
}
