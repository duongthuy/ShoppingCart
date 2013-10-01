/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import bean.Admin;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author MinhTu-75
 */
public class searchDAO {
    Connection conn = null;
    
    public void adminDAO() {
        String dbUsername = "root", dbPassword = "";
        String dbUrl = "jdbc:mysql://127.0.0.1:3306/thegioiso";
        String dbClass = "com.mysql.jdbc.Driver";
        try {
            Class.forName(dbClass);
            conn = (Connection) DriverManager.getConnection (dbUrl, dbUsername, dbPassword);
        }catch(ClassNotFoundException e) {
            e.printStackTrace();
        }catch(SQLException e) {
            e.printStackTrace();
        }
    }
    
       public void update(String search){
        String Str = "select name from phones,laptops,tablet where name=like ";
        try {
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(Str);
                
                preStmt.setString(1, "%"+search+"%");
               
                preStmt.executeUpdate();
        } catch (SQLException ex) {
        }
    }
    
}
