<%-- 
    Document   : registerprocess
    Created on : Nov 21, 2012, 11:43:26 AM
    Author     : Tung
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.adminDAO"%>
<%@page import="bean.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String user = request.getParameter("username");
String pass = request.getParameter("password");
String pass2 = request.getParameter("password2");
String email = request.getParameter("email");

if(user==""||pass==""||pass2==""||email==""){
    response.sendRedirect("register.jsp?error=1");
}else if(!pass.equals(pass2)){
    response.sendRedirect("register.jsp?error=2");
}else{
    adminDAO adao = new adminDAO();
    Admin u = new Admin();
    boolean check = true;
    u.setUsername(user);
    u.setPassword(pass);
    u.setEmail(email);
    ArrayList<Admin> list = adao.getAllUser();
    for(Admin a:list){
        if(a.getUsername().equals(u.getUsername())){
            check = false;
        }
    }
    if(check){
        adao.adduser(u);
        response.sendRedirect("Home.jsp?reg=ok");
       }else{
        response.sendRedirect("register.jsp?error=3");
       }
}

%>
