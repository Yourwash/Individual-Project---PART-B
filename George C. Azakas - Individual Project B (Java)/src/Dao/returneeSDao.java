/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import Models.Course;
import Models.ReturneeStudent;
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
public class returneeSDao {

    public static List<ReturneeStudent> getAllReturneeStudents() {
        List<ReturneeStudent> rsList = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "select distinct spc_studentKey from returnee_students_list";
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();
            while (rs.next()) {
                rsList.add(getReturneeStudentWithoutConnection(rs.getLong(1), con));

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
        return (rsList);
    }

    public static ReturneeStudent getReturneeStudentWithoutConnection(long studentKey, Connection con) {
        ReturneeStudent rtns = new ReturneeStudent();
        List<Course> courses = new ArrayList<>();
        String sql = "select * from returnee_students_list where spc_studentKey = ?";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            rs = ps.executeQuery();
            rs.next();
            rtns.setStudentKey(studentKey);
            rtns.setFirstName(studentsDao.getStudentByKeyWithoutConnection(studentKey, con).getFirstName());
            rtns.setLastName(studentsDao.getStudentByKeyWithoutConnection(studentKey, con).getLastName());
            courses.add(coursesDao.getCourseByKeyWithoutConnection(rs.getInt(2), con));
            while (rs.next()) {
                courses.add(coursesDao.getCourseByKeyWithoutConnection(rs.getInt(2), con));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally{
        rtns.setCourses(courses);
        }

        return (rtns);
    }
}
