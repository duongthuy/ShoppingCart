<%-- 
    Document   : Home
    Created on : Oct 31, 2012, 10:09:06 PM
    Author     : Tung
--%>
<%@page import="bean.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thoát</title>
    </head>
    <body>
        <%
            if (session.getAttribute("user")!= null)
            {
                session.removeValue("user");
                session.removeValue("cart");
                session.invalidate();
                response.sendRedirect("index.jsp");
            }
            else
            {
                response.sendRedirect("index.jsp");
            }
%>
    </body>
</html>
