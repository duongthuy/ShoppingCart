<%-- 
    Document   : process
    Created on : Nov 13, 2012, 4:10:30 PM
    Author     : Tung
--%>

<%@page import="bean.Admin"%>
<%@page import="entity.*"%>
<%@page import="dao.*"%>
<%@page import="entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 


    <% 
        Cart cart=(Cart)session.getAttribute("cart"); 
        int id = Integer.parseInt(request.getParameter("idprod"));
            if(session.getAttribute("user") != null){
            if(request.getParameter("mua")!=null){ 
                
                if(cart==null) 
                    cart=new Cart(); 
                productDAO pdao=new productDAO(); 
                product p=pdao.getproduct(id);//l;ay 1 sp 
                //MonHang mh=new MonHang(p.getId(),soluong,sp.getDongia()); 
                //them vào giỏ 
                //cart.ThemHang(mh); 
                cart.addproduct(p);
                session.setAttribute("cart",cart); 

                response.sendRedirect("Cart.jsp"); 
            } 
         }else{
            response.sendRedirect("productDetail.jsp?idprod="+id+"&ok=0");
         }
    %>  