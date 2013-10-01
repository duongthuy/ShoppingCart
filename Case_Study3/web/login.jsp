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
        <title>Đăng nhập</title>
        <link rel="stylesheet" type="text/css" href="css/CS_loginstyle.css"/>
    </head>
    <body>
    <div id="login">
    	<img src="images/sso_icon_sprite.png">
        <form ACTION="LoginServlet" METHOD="POST">
        	<label class="textlogin">Đăng nhập</label>
            <label class="text">Tên đăng nhập</label>
            <input type="text" name="username" class="txtfeild">
            <label class="text">Mật khẩu</label>
            <input type="password" name="password" class="txtfeild">
            <label class="message">
            	<% if (request.getAttribute("message")!= null){%>
                	<%=request.getAttribute("message")%>
            	<%}%>
            </label>
            <input type="submit" value="Đăng nhập" class="btnlogin">
            
        </form>
    </div>
    </body>
</html>
