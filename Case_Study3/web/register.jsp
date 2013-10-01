<%-- 
    Document   : register
    Created on : Nov 21, 2012, 11:35:08 AM
    Author     : Tung
--%>

<%@page import="bean.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng Ký</title>
        <link rel="stylesheet" type="text/css" href="css/CS_loginstyle.css"/>
    </head>
    <body>
    <div id="login">
    	<img src="images/sso_icon_sprite.png">
        <form ACTION="registerprocess.jsp" METHOD="POST">
        	<label class="textlogin">Đăng Ký Tài Khoản</label>
            <label class="text">Tên đăng nhập(*)</label>
            <input type="text" name="username" class="txtfeild">
            <label class="text">Mật khẩu(*)</label>
            <input type="password" name="password" class="txtfeild">
             <label class="text">Xác nhận mật khẩu(*)</label>
            <input type="password" name="password2" class="txtfeild">
            <label class="text">Email(*)</label>
            <input type="text" name="email" class="txtfeild">
            <label class="message">
                <% if (request.getParameter("error")!= null){
                    if(request.getParameter("error").equals("1")){
                    %>
                        
                	Bạn chưa nhập đầy đủ thông tin
                        <%  }else if(request.getParameter("error").equals("2")){
                            %>
                        Xác nhận mật khẩu không đúng
                        <%
                        }else if(request.getParameter("error").equals("3")){
                            %>
                        Tên đăng nhập đã tồn tại
                        <%
                        }
                  }
                %>
            </label>
            <input type="submit" value="Đăng ký" class="btnlogin">
            
        </form>
    </div>
    </body>
</html>