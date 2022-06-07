/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Course;
import Models.Subject;
import Util.DbUtils;
import Util.Input;
import java.sql.Connection;
import java.sql.Date;
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
public class coursesDao {

    public static Course selectCourse() {
        Connection con = DbUtils.getConnection();
        String sql = "select * from courses where courseKey=?";
        Course course = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql);
            showCourseList(con);
            ps.setInt(1, Input.inputInt());
            rs = ps.executeQuery();
            if (rs.next()) {
                course = getCourseByKey(rs.getInt(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(coursesDao.class.getName()).log(Level.SEVERE, null, ex);
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
        return (course);
    }

    public static void showCourseList(Connection con) {
        String sql = "select courseKey from courses";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("For " + getCourseByKey(rs.getInt(1)).getTitle() + " input " + rs.getInt(1) + ".");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static List<Course> getAllCourses() {
        List<Course> result = new ArrayList<>();
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
                result.add(getCourseByKeyWithoutConnection(rs.getInt(1), con));
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

    public static boolean insertCourse(Course course) {
        Connection con = DbUtils.getConnection();
        PreparedStatement ps;
        String sql = "insert into courses values (?,?,?,?,?)";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, course.getCourseKey());
            ps.setString(2, course.getTitle());
            ps.setBoolean(3, course.isType());
            ps.setDate(4, (Date) course.getStartDate());
            ps.setDate(5, (Date) course.getEndDate());
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        sql = "insert into course_stream values (?,?)";
        ps = null;
        try {
            for (Subject s : course.getSubjects()) {
                ps = con.prepareStatement(sql,
                        ResultSet.TYPE_SCROLL_INSENSITIVE,
                        ResultSet.CONCUR_UPDATABLE);
                ps.setInt(1, course.getCourseKey());
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

        return (true);
    }

    public static Course getCourseByKey(int courseKey) {
        Course course;
        Connection con = DbUtils.getConnection();
        course = getCourseInfoByKeyWithoutConnection(courseKey, con, getCourseSubjectsWithoutConnection(courseKey, con));
        try {
            con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return (course);
    }

    public static Course getCourseByKeyWithoutConnection(int courseKey, Connection con) {
        Course course;
        course = getCourseInfoByKeyWithoutConnection(courseKey, con, getCourseSubjectsWithoutConnection(courseKey, con));
        return course;
    }

    public static List<Subject> getCourseSubjectsWithoutConnection(int courseKey, Connection con) {
        List<Subject> subjects = new ArrayList<>();
        PreparedStatement ps;
        ResultSet rs;
        Subject s;
        String sql = "select * from course_stream_list where cs_courseKey =?";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            while (rs.next()) {
                s = new Subject(rs.getInt(1), rs.getString(2));
                subjects.add(s);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return subjects;
    }

    public static Course getCourseInfoByKeyWithoutConnection(int courseKey, Connection con, List<Subject> subjects) {
        Course course = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String sql = "select * from courses where courseKey =?";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, courseKey);
            rs = ps.executeQuery();
            rs.next();
            course = new Course(rs.getInt(1),
                    rs.getString(2),
                    rs.getBoolean(3),
                    rs.getDate(4),
                    rs.getDate(5),
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
                ex.printStackTrace();
            }
        }
        return (course);
    }
}
