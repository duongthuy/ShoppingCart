/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.Admin;
import bean.SQLconnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.IOException;
import java.io.PrintWriter;
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
 * @author VAN ANH
 */
public class changePasswordServlet extends HttpServlet {

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

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
            //String username = request.getParameter("username").trim();
            String password1 = request.getParameter("oldpassword").trim();
            String password2 = request.getParameter("newpassword").trim();
            String email = request.getParameter("email").trim();
            
            HttpSession session = request.getSession(true);
            SQLconnection con=new SQLconnection();
            Statement st=null;
            ResultSet rs=null;
            
            Admin p = (Admin)session.getAttribute("xx");
            String username =null;
            username=p.getUsername();
            
            String sql="select * from admin where username = '"+username+"' and password = '"+password1+"'";
        try {
            st = con.getConnection().createStatement();
            rs=st.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(changePasswordServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        int i=0;
        try {
            while(rs.next()){
                    i++;
                }
        } catch (SQLException ex) {
            Logger.getLogger(changePasswordServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(i!=0){
                sql="update admin set password='"+password2+"',email='"+email+"' where username = '"+username+"'";
            try {
                st.executeUpdate(sql);
            } catch (SQLException ex) {
                Logger.getLogger(changePasswordServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            p.setPassword(password2);
            p.setEmail(email);
              
            session.setAttribute("xx",p);
            response.sendRedirect("index.jsp");
        }
        else{
            request.setAttribute("message", "Password :"+password1+" is not correct!!!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("/changepassword.jsp");
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
