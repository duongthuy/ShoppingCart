/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author VAN ANH
 */
public class main {
    public static void main(String args[]) {
        SQLconnection con=new SQLconnection();
        Statement st=null;
        try {
            st=con.getConnection().createStatement();
        } catch (SQLException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }
        ResultSet rs=null;
        try {
            rs=st.executeQuery("select * from admin");
        } catch (SQLException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }
        String ss=null;
        try {
            while(rs.next()){
            ss=rs.getString("username");
            System.out.print(ss+"\n");
            }
        } catch (SQLException ex) {
            Logger.getLogger(main.class.getName()).log(Level.SEVERE, null, ex);
        }
            
    }
    
}
