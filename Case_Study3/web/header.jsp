<%-- 
    Document   : header
    Created on : Nov 21, 2012, 1:12:31 AM
    Author     : Tung
--%>

<%@page import="bean.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="CS_headercontent">
            	<ul>
                	<li><a href="Home.jsp">thegioiso.vn</a></li>
                    <li class="CS_headerimg"></li>
                    <li><a href="#">liên hệ</a></li>
                    <li class="CS_headerimg"></li>
                    <li><a href="#">trợ giúp</a></li>
                    <li class="CS_headerimg"></li>
                    <li><a href="#">doanh nghiệp</a></li>
                    <li class="CS_headerimg"></li>
                    <li><a href="#">diễn đàn</a></li>
                    <li class="CS_headerimg"></li>
                    <% if (session.getAttribute("user")== null) { %>
                    <li style="float:right"><a href="register.jsp">đăng ký</a></li>
                        <li class="CS_headerimg" style="float:right"></li>
                       <li style="float:right"><a href="login.jsp">đăng nhập</a></li>
                   <% }
					else { 
						Admin p = (Admin)session.getAttribute("user");
						%>
                        <li style="float:right"><a href="Logout.jsp">Thoát</a></li>
                        <li class="CS_headerimg" style="float:right"></li>
                        <li style="float:right">
                        	Hi <%=p.getUsername()%>
                        </li>
                        <li class="CS_headerimg" style="float:right"></li>
                        <li style="float:right"><a href="profile.jsp">Thông tin cá nhân</a></li>
                        <%
                            if(p.getLever()==1){
                        %>
                        <li class="CS_headerimg" style="float:right"></li>
                        <li style="float:right"><a href="admin.jsp">Trang quản trị</a></li>
                 	<%}
                              }
                        %>
                </ul>
            </div><!--end CS_headercontent-->
            <div id="slideads">
                <div class="slideads1" id="slideads1">
                    <img src="images/05_11_2012_16_00_23_TGDD-AsusVivo-150x600.png" />
                </div>
                
            </div><!--end slideads-->
