<%-- 
    Document   : Home
    Created on : Oct 31, 2012, 10:09:06 PM
    Author     : Tung
--%>
<%@page import="bean.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@page import="entity.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thế Giới Số</title>
        <link rel="stylesheet" type="text/css" href="css/style6.css" />
        <link rel="stylesheet" type="text/css" href="css/CS_style1.css"/>
        <script language="javascript" type="text/javascript" src="js/jquery.js"></script>
        <script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
        <script language="javascript" type="text/javascript" src="js/script.js"></script>
        <script language="javascript" type="text/javascript" src="js/CS_script.js"></script>
        <script src="js/quangcaotruot.js" type="text/javascript"></script>
        
     
      
    </head>
    <body >
        <% if(request.getParameter("reg")!=null){ %>
         <script language="javascript">
                  alert("Bạn đăng ký tài khoản thành công ^^.");   
				  </script>
                            <%}%>
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
			
<jsp:include page="slideshow.jsp"></jsp:include>
 		   <!-- END slideshow --> 
<!---------------------------------------------------------------------------------------------------------------->     

<jsp:include page="help.jsp"></jsp:include>
<!----------------------------------------------------------------------------------------------------------------> 


            
             <div id="CS_product">
             	<div id="CS_product_header">
                	<div id="CS_dt_headerleft" style="background:url(images/icon-mobi.jpg) no-repeat">
                    	<p class="CS_product_title">Điện Thoại Di Động</p>
                        
                    </div><!--end CS_dt_headerleft-->
                    <ul class="CS_list">
                        <li><a href="productlist.jsp?kind=1"><p>Điện thoại di động</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Phụ kiên DTDĐ</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Sim số, thẻ cào</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Phần mềm, game</p></a></li>
                        </ul>
                    <jsp:include page="phonePaging.jsp"></jsp:include>
                
             </div><!--end CS_product-->
<!---------------------------------------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------------------------------------->           
             <div id="CS_product">
             	<div id="CS_product_header">
                	<div id="CS_dt_headerleft" style="background:url(images/iconlap.png) no-repeat">
                    	<p class="CS_product_title">Laptop</p>
                    </div><!--end CS_dt_headerleft-->
                     <ul class="CS_list">
                         <li><a href="productlist.jsp?kind=3"><p>Laptop</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Phụ kiên Lapto</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Loa vi tính</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Thiết bị mạng</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>USB 3G</p></a></li>
                        </ul>
                     <jsp:include page="laptopPaging.jsp"></jsp:include>
             </div><!--end CS_product-->
<!---------------------------------------------------------------------------------------------------------------->
<!---------------------------------------------------------------------------------------------------------------->           
             <div id="CS_product">
             	<div id="CS_product_header">
                	<div id="CS_dt_headerleft" style="background:url(images/icontab.png) no-repeat">
                    	<p class="CS_product_title"><a href="#" >Máy Tính Bảng</a></p>
                    </div><!--end CS_dt_headerleft-->
                     <ul class="CS_list">
                         <li><a href="productlist.jsp?kind=2"><p>Máy tính bảng</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Asus</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Samsung</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Ipad</p></a></li>
                            <li class="CS_linelist"></li>
                            <li><a href="#"><p>Acer</p></a></li>
                        </ul>
                     <jsp:include page="tabletPaging.jsp"></jsp:include>
             </div><!--end CS_product-->
 			
<!---------------------------------------------------------------------------------------------------------------->
		<!--	<div class="floating-banner-left" style="left:5px;">
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
