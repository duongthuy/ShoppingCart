<%-- 
    Document   : update
    Created on : Nov 14, 2012, 3:14:40 PM
    Author     : Tung
--%>


<%@page import="bean.Admin"%>
<%@page import="entity.*"%>
<%@page import="dao.*"%>
<%@page import="entity.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %> 


    <% 
        Cart cart=(Cart)session.getAttribute("cart"); 
        Admin ad = (Admin)session.getAttribute("user");
        if(request.getParameter("btnupdate")!=null){ 
            int id = Integer.parseInt(request.getParameter("idprod"));
            int amount = Integer.parseInt(request.getParameter("amount"));
            if(cart==null) 
                cart=new Cart();//l;ay 1 sp 
            
            cart.updateproduct(id, amount);
            session.setAttribute("cart",cart); 
             
            response.sendRedirect("Cart.jsp"); 
        }else if(request.getParameter("btndel")!=null){
            int id = Integer.parseInt(request.getParameter("idprod"));
            if(cart==null) 
                cart=new Cart();//l;ay 1 sp 
            //MonHang mh=new MonHang(p.getId(),soluong,sp.getDongia()); 
            //them vào giỏ 
            //cart.ThemHang(mh); 
            cart.delproduct(id);
            session.setAttribute("cart",cart); 
             
            response.sendRedirect("Cart.jsp");
        }else if(request.getParameter("mua")!=null&&cart!=null){
            orderDAO odao = new orderDAO();
            productDAO pdao = new productDAO();
            for(product p:cart.getCart()){
                order o = new order();
                o.setIduser(ad.getId());
                o.setIdprod(p.getId());
                o.setNumber(p.getAmount());
                o.setTotal(p.getDongia());
                odao.addorder(o);
                
            }
            
            response.sendRedirect("Cart.jsp?mua=ok");
        }
        
         
         
    %>  
