<%-- 
    Document   : producteditprocess
    Created on : Nov 20, 2012, 8:57:33 PM
    Author     : Duong
--%>

<%@page import="entity.product"%>
<%@page import="dao.productDAO"%>
<%@page import="entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 


    <% 
        int kind = 1;
            if(request.getParameter("kind") != null){
                kind = Integer.parseInt(request.getParameter("kind"));
            }
     
        if(request.getParameter("btnupdate")!=null){ 
            productDAO productDAO = new productDAO();
            product p = new product();
            p.setId(Integer.parseInt(request.getParameter("idprod")));
            p.setName(request.getParameter("name"));
            p.setImage(request.getParameter("urlimg"));
            p.setPrice(Long.parseLong(request.getParameter("price")));
            
            productDAO.updateprod(p);
            response.sendRedirect("admin.jsp?up=ok&kind="+kind); 
        }else if(request.getParameter("btndel")!=null){
            productDAO productDAO = new productDAO();
            int id = Integer.parseInt(request.getParameter("idprod"));
            productDAO.delprod(id);
            response.sendRedirect("admin.jsp?del=ok&kind="+kind);
        } 
        else if(request.getParameter("btnadd")!=null){
            productDAO productDAO = new productDAO();
            product p = new product();
            p.setName(request.getParameter("name"));
            p.setImage(request.getParameter("urlimg"));
            p.setPrice(Long.parseLong(request.getParameter("price")));
            p.setKind(kind-1);
            productDAO.addprod(p);
            response.sendRedirect("admin.jsp?add=ok&kind="+kind);
        } 
         
    %>  


