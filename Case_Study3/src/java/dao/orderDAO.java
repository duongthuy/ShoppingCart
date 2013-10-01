/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import entity.order;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Tung
 */
public class orderDAO {
    Connection conn = null;
    
    public orderDAO() {
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
    
    public void addorder(order o){
        String query = "INSERT INTO orderProduce(iduser, idprod, number,pricetotal) VALUES(?,?,?,?)";
        try{
                PreparedStatement preStmt = (PreparedStatement) conn.prepareStatement(query);

                preStmt.setInt(1, o.getIduser());
                preStmt.setInt(2, o.getIdprod());
                preStmt.setInt(3, o.getNumber());
                preStmt.setString(4, (o.getTotal()+""));
                preStmt.executeUpdate();
            }catch(Exception e){
                System.out.print(e);
            }
    }
}
