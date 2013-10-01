<%-- 
    Document   : profileprocess
    Created on : Nov 14, 2012, 9:54:08 PM
    Author     : Tung
--%>

<%@page import="bean.Admin"%>
<%@page import="dao.adminDAO"%>
<%@page import="entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 


    <% 
        
     
        if(request.getParameter("btnupdate")!=null){ 
            adminDAO a = new adminDAO();
            Admin u = new Admin();
            u.setId(Integer.parseInt(request.getParameter("id")));
            u.setUsername(request.getParameter("name"));
            u.setPassword(request.getParameter("pass"));
            u.setEmail(request.getParameter("email"));
            u.setLever(Integer.parseInt(request.getParameter("lever")));
            a.update(u);
            session.setAttribute("user",u);
            response.sendRedirect("profile.jsp"); 
        }
    %>  

