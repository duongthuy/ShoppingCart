package servlet;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import bean.Admin;
import bean.SQLconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 *
 */
public class LoginServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String userName = request.getParameter("username").trim();
            String password = request.getParameter("password").trim();
            
            HttpSession session = request.getSession(true);
            SQLconnection con=new SQLconnection();
            Statement st=null;
            ResultSet rs=null;
            String use=null;
            String pass=null;
            String email=null;
            int lever = 0;
            int id = 0;
            boolean t=true;
            try {
                st = con.getConnection().createStatement();
                rs=st.executeQuery("select * from admin WHERE username ='"+ userName + "' AND password ='"+ password + "'");                
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            try{
            if(rs.next()){
                id = rs.getInt("id");
                use = rs.getString("username");
                pass = rs.getString("password");
                email=rs.getString("email");
                lever=rs.getInt("lever");
                Admin p = new Admin(userName, password,email,lever,id);
                session.setAttribute("user",p);
                response.sendRedirect("index.jsp"); 
                t=false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
         if(t==true){
            request.setAttribute("message", "Please try again!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            if (dispatcher != null) {
                dispatcher.forward(request, response);
            }
        }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
