package Dao;


import Models.Subject;
import Util.DbUtils;
import Util.Input;
import Util.UIutils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author georg
 */
public class subjectsDao {

    public static void showSubjectList(Connection con) {
        String sql = "select * from subjects";
        PreparedStatement ps;
        ResultSet rs;
        try {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("For " + rs.getString(2) + " input " + rs.getInt(1) + ".");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public static List<Subject> userCreateSubjectList() {
        List<Subject> sList = new ArrayList<>();
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        showSubjectList(con);
        do {
            String sql = "select subTitle from subjects where subjectKey = ?";
            try {
                ps = con.prepareStatement(sql);
                ps.setInt(1, Input.inputInt());
                rs = ps.executeQuery();
                sList.add(getSubjectBySubjectKeyWithoutConnection(rs.getInt(1), con));
                return (sList);
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

        return (sList);
    }

    public static Subject getSubjectBySubjectKeyWithoutConnection(int subjectKey, Connection con) {
        PreparedStatement ps;
        ResultSet rs;
        Subject subject = null;
        String sql = "select * from subjects where subjectKey =?";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, subjectKey);
            rs = ps.executeQuery();
            while (rs.next()) {
                subject = new Subject(rs.getInt(1), rs.getString(2));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return subject;
    }

    public static Subject getSubjectBySubjectKey(int subjectKey) {
        Connection con = DbUtils.getConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
        Subject subject = null;
        String sql = "select * from subjects where subjectKey =?";
        try {
            ps = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
            ps.setInt(1, subjectKey);
            rs = ps.executeQuery();
            while (rs.next()) {
                subject = new Subject(rs.getInt(1), rs.getString(2));
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
        return subject;
    }
}
