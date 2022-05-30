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
        String sql = "select * from assignments";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = con.prepareCall(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);
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

}
