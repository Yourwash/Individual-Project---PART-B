/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Student;
import Util.DbUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Dante_Fiero
 */
public class studentsDao {

    public List<Student> getAllStudents() {
        List<Student> result = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        String sql = "select * from students";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            rs = ps.executeQuery();

            while (rs.next()) {
                Student s = new Student(rs.getLong(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDate(4),
                        rs.getDouble(5));
                result.add(s);
            }
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

        return result;
    }

    public static boolean insertStudent(Student student) {
        Connection con = DbUtils.getConnection();
        String sql = "insert into students values (?,?,?,?,?)";
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement(sql);
            ps.setLong(1, student.getStudentKey());
            ps.setString(2, student.getFirstName());
            ps.setString(3, student.getLastName());
            ps.setDate(4, (Date) student.getDob());
            ps.setDouble(5, student.getTuitionFees());
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

    public static Student getStudentByKey(Long studentKey) {
        Student s = null;
        Connection con = DbUtils.getConnection();
        String sql = "select * from students where studentKey =?";
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setLong(1, studentKey);
            rs = ps.executeQuery();
            rs.next();
            s = new Student(rs.getLong(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getDate(4),
                    rs.getDouble(5));

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

        return s;
    }
}
