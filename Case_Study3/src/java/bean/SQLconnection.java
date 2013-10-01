/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

//import com.mysql.jdbc.Driver; for mysql
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author VAN ANH
 */
public class SQLconnection {
    String username="root";
    String password="";
    String database="thegioiso";
    Connection con=null;
    public SQLconnection(){}
    public Connection getConnection(){
        if(con==null){
            try {
                // for mysql
                //Class.forName("com.mysql.jdbc.Driver");
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(SQLconnection.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                // for mysql
                //con = DriverManager.getConnection("jdbc:mysql://localhost:3306/trading","root","123456");
                String url="jdbc:mysql://127.0.0.1:3306/"+database;
                con = DriverManager.getConnection(url, username, password);
            } catch (SQLException ex) {
                Logger.getLogger(SQLconnection.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
        return con;
    }      
}
