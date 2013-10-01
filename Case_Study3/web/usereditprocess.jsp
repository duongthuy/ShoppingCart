<%-- 
    Document   : usereditprocess
    Created on : Nov 19, 2012, 10:13:40 PM
    Author     : Duong
--%>

<%@page import="bean.Admin"%>
<%@page import="dao.adminDAO"%>
<%@page import="entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 


    <% 
        int kind = 1;
            if(request.getParameter("kind") != null){
                kind = Integer.parseInt(request.getParameter("kind"));
            }
     
        if(request.getParameter("btnupdate")!=null){ 
            adminDAO adminDAO = new adminDAO();
            Admin p = new Admin();
            p.setId(Integer.parseInt(request.getParameter("idu")));
            p.setUsername(request.getParameter("name"));
            p.setPassword(request.getParameter("pass"));
            p.setEmail(request.getParameter("email"));
            
            adminDAO.updateuser(p);
            response.sendRedirect("admin.jsp?up=ok&kind="+kind);  
        }else if(request.getParameter("btndel")!=null){
            adminDAO adminDAO = new adminDAO();
            int id = Integer.parseInt(request.getParameter("idu"));
            adminDAO.deluser(id);
            response.sendRedirect("admin.jsp?del=ok&kind="+kind);
        } 
        else if(request.getParameter("btnadd")!=null){
            adminDAO adminDAO = new adminDAO();
            Admin p = new Admin();
            p.setUsername(request.getParameter("name"));
            p.setPassword(request.getParameter("pass"));
            p.setEmail(request.getParameter("email"));
            adminDAO.adduser(p);
            response.sendRedirect("admin.jsp?add=ok&kind="+kind);
        } 
         
    %>  
