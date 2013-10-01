<%-- 
    Document   : search
    Created on : Nov 20, 2012, 3:03:35 PM
    Author     : MinhTu-75
--%>

<%@page import="dao.productDAO"%>
<%@page import="entity.Cart"%>
<%@page import="entity.*"%>
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
         <%  
         
         productDAO pdao=new productDAO(); 
         Cart cart=(Cart)session.getAttribute("cart"); 
        %>
<!---------------------------------------------------------------------------------------------------------------->
			<div id="CS_url">
				<span><a href="#">Trang chủ </a></span> <img src="images/next_gallery_ac.png"> <span><a href="#">Giỏ hàng</a></span>

            </div><!--end CS_url-->
<!---------------------------------------------------------------------------------------------------------------->

			 <div id="CS_product">
             	 <div id="CS_product_content">
               	   	<p style="font-size:18px" align="center">kết quả tìm kiếm </p>
                        <br><br>
                        <jsp:include page="searchprocess.jsp"></jsp:include>
           	         
              	   
                   
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
