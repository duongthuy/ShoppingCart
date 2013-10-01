/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import bean.Admin;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Tung
 */
public class adminDAO {
    Connection conn = null;
    
    public adminDAO() {
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
    
    public void update(Admin p){
        String updateStr = "UPDATE admin SET username = ?,password = ?, email = ? WHERE id = ?";
        try {
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(updateStr);
                
                preStmt.setString(1, p.getUsername());
                preStmt.setString(2, p.getPassword());
                preStmt.setString(3, p.getEmail());
                preStmt.setInt(4, p.getId());
                preStmt.executeUpdate();
        } catch (SQLException ex) {
        }
    }
    
    public int getTotal(){
        int total = 0;
        
        String query = "Select COUNT(*) AS 'TOTAL' FROM admin";
        try {
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        if (rs.next()) {
           total = rs.getInt("TOTAL");
        }
        }catch(Exception e) {
            
        }
        
        return total;
    }
    
    public ArrayList<Admin> getAllpaging(int start,int display){
        ArrayList<Admin> list = new ArrayList<Admin>();
          
        String query = "Select * FROM admin ORDER by id DESC LIMIT "+start+","+display+"";
       
        try {
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            Admin p = new Admin();
            p.setId(rs.getInt("id"));
            p.setUsername(rs.getString("username"));
            p.setPassword(rs.getString("password"));
            p.setEmail(rs.getString("email"));
            p.setLever(rs.getInt("lever"));
            list.add(p);
        }
        }catch(Exception e) {
            
        }
        return list;
    }
    
    public ArrayList<Admin> getAllUser(){
        ArrayList<Admin> list = new ArrayList<Admin>();
          
        String query = "Select * FROM admin";
       
        try {
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            Admin p = new Admin();
            p.setId(rs.getInt("id"));
            p.setUsername(rs.getString("username"));
            p.setPassword(rs.getString("password"));
            p.setEmail(rs.getString("email"));
            p.setLever(rs.getInt("lever"));
            list.add(p);
        }
        }catch(Exception e) {
            
        }
        return list;
    }
    
   
    
    public Admin getAdmin(int id){ 
        Admin p = new Admin();
        
        String query = "Select * FROM admin where id='"+id+"'";
        try { 
            Statement stmt=(Statement) conn.createStatement(); 
            ResultSet rs=stmt.executeQuery(query); 
            if(rs.next()){ 
                p.setId(rs.getInt("id"));
                p.setUsername(rs.getString("username"));
                p.setPassword(rs.getString("password"));
                p.setEmail(rs.getString("email"));
                p.setLever(rs.getInt("lever"));
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        } 
        return p; 
    } 
    
    public void adduser(Admin p){
        String query = "INSERT INTO admin(username, password, email,lever) VALUES(?,?,?,?)";
        try{
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(query);

                preStmt.setString(1, p.getUsername());
                preStmt.setString(2, p.getPassword());
                preStmt.setString(3, p.getEmail());
                preStmt.setInt(4, 0);
                preStmt.executeUpdate();
            }catch(Exception e){
                System.out.print(e);
            }
    }
    
    public void updateuser(Admin p){
        String updateStr = "UPDATE admin SET username = ?,password = ?, email = ? WHERE id = ?";
        try {
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(updateStr);
                
                preStmt.setString(1, p.getUsername());
                preStmt.setString(2, p.getPassword());
                preStmt.setString(3, p.getEmail());
                preStmt.setInt(4, p.getId());
                preStmt.executeUpdate();
        } catch (SQLException ex) {
        }
        
    }
    
    public void deluser(int id){
        String query = "DELETE FROM admin WHERE id='"+id+"'";
        try{
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(query);
                preStmt.executeUpdate();
            }catch(Exception e){
                System.out.print(e);
            }
    }
}
