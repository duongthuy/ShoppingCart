/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Connection;
import entity.productDetail;
import java.sql.*;

/**
 *
 * @author Tung
 */
public class productDetailDAO {
    Connection conn = null;
    
    public productDetailDAO() {
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
    
    public productDetail getproductDetail(int id){
        productDetail pd = new productDetail();
        
        String query = "SELECT * FROM `productdetail` WHERE id='"+id+"'";
        try { 
            Statement stmt=(Statement) conn.createStatement(); 
            ResultSet rs=stmt.executeQuery(query); 
            if(rs.next()){ 
                pd.setId(rs.getInt("id"));
                pd.setCamera(rs.getString("camera"));
                pd.setCpu(rs.getString("cpu"));
                pd.setOs(rs.getString("os"));
                pd.setPin(rs.getString("pin"));
                pd.setScreen(rs.getString("screen"));
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        } 
        
        return pd;
    }
}
