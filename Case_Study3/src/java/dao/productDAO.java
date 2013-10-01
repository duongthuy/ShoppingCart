/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import entity.order;
import entity.product;
import entity.product;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author MinhTu-75
 */
public class productDAO {
    Connection conn = null;
    
    public productDAO() {
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
    
    public ArrayList<product> getResult(String search){
        ArrayList<product> list = new ArrayList<product>();
        String query = "Select * FROM products where name like '%"+search+"%'";
       
        try {
            
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            product p = new product();
            p.setId(rs.getInt("id"));
            p.setName(rs.getString("name"));
            p.setPrice(Long.parseLong(rs.getString("price")));
            p.setImage(rs.getString("image"));
            p.setKind(rs.getInt("kind"));
            p.setIdDetail(rs.getInt("idDetail"));
            list.add(p);
           
        }
        }catch(Exception e) {
            
        }
        return list;
    }
    
    public int getTotalsearch(String s){
        int total = 0;
        
        String query = "Select COUNT(*) AS 'TOTAL' FROM products where name like '%"+s+"%'";
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
    
    public ArrayList<product> getresultpaging(int start,int display,String s){
        ArrayList<product> list = new ArrayList<product>();
          
        String query = "Select * FROM products where name like '%"+s+"%' ORDER BY id LIMIT "+start+","+display+"";
       
        try {
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            product p = new product();
            p.setId(rs.getInt("id"));
            p.setName(rs.getString("name"));
            p.setPrice(Long.parseLong(rs.getString("price")));
            p.setImage(rs.getString("image"));
            p.setKind(rs.getInt("kind"));
            p.setIdDetail(rs.getInt("idDetail"));
            list.add(p);
           
        }
        }catch(Exception e) {
            
        }
        return list;
    }
    
    
    public int getTotal(int k){
        int total = 0;
        
        String query = "Select COUNT(*) AS 'TOTAL' FROM products where kind='"+k+"'";
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
    
    public ArrayList<product> getAllpaging(int start,int display,int k){
        ArrayList<product> list = new ArrayList<product>();
          
        String query = "Select * FROM products where kind='"+k+"' ORDER by id DESC LIMIT "+start+","+display+"";
       
        try {
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            product p = new product();
            p.setId(rs.getInt("id"));
            p.setName(rs.getString("name"));
            p.setPrice(Long.parseLong(rs.getString("price")));
            p.setImage(rs.getString("image"));
            p.setKind(rs.getInt("kind"));
            p.setIdDetail(rs.getInt("idDetail"));
            list.add(p);
           
        }
        }catch(Exception e) {
            
        }
        return list;
    }
    
    public ArrayList<product> getAllproduct(int k){
        ArrayList<product> list = new ArrayList<product>();
          
        String query = "Select * FROM products where kind='"+k+"'";
       
        try {
            Statement stmt = (Statement) conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        while (rs.next()) {
            product p = new product();
            p.setId(rs.getInt("id"));
            p.setName(rs.getString("name"));
            p.setPrice(Long.parseLong(rs.getString("price")));
            p.setImage(rs.getString("image"));
            p.setKind(rs.getInt("kind"));
            p.setIdDetail(rs.getInt("idDetail"));
            list.add(p);
           
        }
        }catch(Exception e) {
            
        }
        return list;
    }
    
    public product getproduct(int id){ 
        product p = new product();
        
        String query = "Select * FROM products where id='"+id+"'";
        try { 
            Statement stmt=(Statement) conn.createStatement(); 
            ResultSet rs=stmt.executeQuery(query); 
            if(rs.next()){ 
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setPrice(Long.parseLong(rs.getString("price")));
                p.setImage(rs.getString("image"));
                p.setKind(rs.getInt("kind"));
                p.setIdDetail(rs.getInt("idDetail"));
            } 
        } catch (Exception e) { 
            e.printStackTrace(); 
        } 
        return p; 
    } 
    
    public void addprod(product p){
        String query = "INSERT INTO products(name, price, image,kind,idDetail) VALUES(?,?,?,?,?)";
        try{
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(query);

                preStmt.setString(1, p.getName());
                preStmt.setString(2, (p.getPrice()+""));
                preStmt.setString(3, p.getImage());
                preStmt.setInt(4, p.getKind());
                preStmt.setInt(5, 1);
                preStmt.executeUpdate();
            }catch(Exception e){
                System.out.print(e);
            }
    }
    
    public void updateprod(product p){
        String updateStr = "UPDATE products SET name = ?,price = ?, image = ? WHERE id = ?";
        try {
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(updateStr);
                
                preStmt.setString(1, p.getName());
                preStmt.setString(2, (p.getPrice()+""));
                preStmt.setString(3, p.getImage());
                preStmt.setInt(4, p.getId());
                preStmt.executeUpdate();
        } catch (SQLException ex) {
        }
        
    }
    
    public void delprod(int id){
        String query = "DELETE FROM products WHERE id='"+id+"'";
        try{
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(query);
                preStmt.executeUpdate();
            }catch(Exception e){
                System.out.print(e);
            }
    }
    
    
}
