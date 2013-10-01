<%-- 
    Document   : profile
    Created on : Nov 14, 2012, 9:37:35 PM
    Author     : Tung
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="bean.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thế Giới Số</title>
        <link rel="stylesheet" type="text/css" href="css/style6.css" />
        <link rel="stylesheet" type="text/css" href="css/CS_style1.css"/>
        <link rel="stylesheet" type="text/css" href="css/CS_style2.css"/>
        <script language="javascript" type="text/javascript" src="js/jquery.js"></script>
        <script language="javascript" type="text/javascript" src="js/CS_script.js"></script>
        <script src="js/quangcaotruot.js" type="text/javascript"></script>
        
		
    </head>
    <body >
    	
        <jsp:include page="header.jsp"></jsp:include>
          
        
<!---------------------------------------------------------------------------------------------------------------->
        <div id="CS_wrapper">
        	<div id="CS_wrapper_header">
            	<a href="Home.jsp"><img src="images/writersblog.jpg"></a>
                <img src="images/title.png">
                <p>Gọi dặt hàng : 01684091032</p>
                </div><!--end CS_wrapper_header-->
                <jsp:include page="menu.jsp"></jsp:include>
         
<!---------------------------------------------------------------------------------------------------------------->
			<div id="CS_url">
				<span><a href="#">Trang chủ </a></span> <img src="images/next_gallery_ac.png"> <span><a href="#">Thông tin cá nhân</a>

            </div><!--end CS_url-->
<!---------------------------------------------------------------------------------------------------------------->

			 <div id="CS_product">
             	 <div id="CS_product_content">
                     <% if (session.getAttribute("user")!= null) { 
                         Admin p = (Admin)session.getAttribute("user");
                     %>
               	   	<p style="font-size:18px;color:#03C;" align="center">Hello <%=p.getUsername()%></p>
               	     
                     <form  method="post" action="profileprocess.jsp">
                     	<input type="hidden" name="id" value="<%=p.getId()%>">
                        <input type="hidden" name="lever" value="<%=p.getLever()%>">
                       <center>
                       <table width="900" height="169" cellpadding="0" cellspacing="0" id="CS_table_Cart" >
               	       <tr>
               	         <td height="33" width="234" >Tên</td>
               	         <td width="221">mật khẩu</td>
               	         <td width="342">email</td>
               	         <td width="101">cập nhật</td>
           	           </tr>
               	       <tr>
               	        
               	         <td width="234">
                         <input name="name" type="text" value="<%=p.getUsername()%>" size="25" class="CS_text">
                         </td>
               	         <td style="color:#F00">
                         <input name="pass" type="text" value="<%=p.getPassword()%>" class="CS_text" size="25">
                         </td>
               	         <td>
           	             <input name="email" type="text" value="<%=p.getEmail()%>" size="35" class="CS_text">
                         </td>
               	         <td><input type="submit" name="btnupdate" class="CS_btnupdate" value=""></td>
           	           </tr>
                           </table>
                           </center>
                           </form>
                        <%}
                        %>
                   
                </div><!--end CS_product_content-->
                
             </div><!--end CS_product-->

<!---------------------------------------------------------------------------------------------------------------->
			<!--<div class="floating-banner-left" style="left:4.5px;">
            	<a href="#"><img src="images/05_11_2012_16_00_23_TGDD-AsusVivo-150x600.png"></a>
            </div>
            <script type="text/javascript">
				$('.floating-banner-left').css('left',$('#CS_wrapper').offset().left - 170);
				
			</script><!--end floating-banner-left-->
<!---------------------------------------------------------------------------------------------------------------->
<jsp:include page="bottom.jsp"></jsp:include>
        </div><!--end CS_wrapper-->
    </body>
</html>
