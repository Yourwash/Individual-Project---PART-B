/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Models.Trainer;
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
public class trainersDao {
    
    public List<Trainer> getAllTrainers() {
        List<Trainer> result = new ArrayList<>();
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
                Trainer s = new Trainer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3));
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

        return (result);
    }
}
