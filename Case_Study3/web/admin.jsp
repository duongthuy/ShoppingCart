<%-- 
    Document   : admin
    Created on : Nov 14, 2012, 5:59:51 PM
    Author     : Duong
--%>


<%@page import="entity.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
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
            <div id="CS_wrapper_menu">
            <%
            int kind = 1;
                         if(request.getParameter("kind")!=null){
                             kind = Integer.parseInt(request.getParameter("kind"));
                         }
            %>
            <% if(request.getParameter("up")!=null){ %>
         <script language="javascript">
                  alert("update thành công ^^.");   
				  </script>
                            <%}else if(request.getParameter("del")!=null){
                                %>
                            <script language="javascript">
                  alert("delete thành công ^^.");   
				  </script>
                                  <%
                            }else if(request.getParameter("add")!=null){
                                %>
                            <script language="javascript">
                  alert("Thêm thành công ^^.");   
				  </script>
                                  <%
                            }
         
                    %>
          
                    <ul id="CS_nav" >
                        <li <% if(kind==1){%>class="CS_navactive" <%}%>><a href="admin.jsp?kind=1">Chỉnh sửa User</a> </li>
                        <li <% if(kind==2){%>class="CS_navactive" <%}%>><a href="admin.jsp?kind=2">Chỉnh sửa Phone</a></li>
                        <li <% if(kind==4){%>class="CS_navactive" <%}%>><a href="admin.jsp?kind=4">Chỉnh sửa laptop</a></li>
                        <li <% if(kind==3){%>class="CS_navactive" <%}%>><a href="admin.jsp?kind=3">Chỉnh sửa tablet</a></li>
                        
                        <form class="CS_timkiem" action="search.jsp" method="post">
                            <input name="search" type="text" placeholder="Tìm kiếm" class="CS_textsearch">
                                 <input type="submit" value="Tìm kiếm" class="CS_btnsearch">
                            </form>
                        
                    </ul><!-- Cấp 0 (Lớn nhất) -->
                
            </div><!--end CS_wrapper_menu -->
         
<!---------------------------------------------------------------------------------------------------------------->
			<div id="CS_url">
                            <span><a href="Home.jsp">Trang chủ </a></span> <img src="images/next_gallery_ac.png"> <span><a href="admin.jsp">Trang quản trị  </a></span> 

            </div><!--end CS_url-->
<!---------------------------------------------------------------------------------------------------------------->

			 <div id="CS_product">
             	 <div id="CS_product_content">
                     <% if (session.getAttribute("user")!= null){  
                         Admin a = (Admin)session.getAttribute("user");
                         
                         if(a.getLever()==1){
                            if(kind==1){
                                %>
                                <p style="font-size:18px;color:#03C;" align="center">Chỉnh sửa thông tin User</p>
                                <jsp:include page="edituser.jsp?kind=1"></jsp:include>
                                <%  }else if(kind==2){
                                %>
                                <p style="font-size:18px;color:#03C;" align="center">Chỉnh sửa thông tin sản phẩm</p>
                                <jsp:include page="editproduct.jsp?kind=2"></jsp:include>
                                <%  }else if(kind==3){
                                %>
                                <p style="font-size:18px;color:#03C;" align="center">Chỉnh sửa thông tin sản phẩm</p>
                                <jsp:include page="editproduct.jsp?kind=3"></jsp:include>
                                <%  }else if(kind==4){
                                %>
                                <p style="font-size:18px;color:#03C;" align="center">Chỉnh sửa thông tin sản phẩm</p>
                                <jsp:include page="editproduct.jsp?kind=4"></jsp:include>
                            <%}
                        }else { %>
                   <p style="font-size:18px;color:#F00;margin-top:20px;" align="center">Bạn không được phép truy cập trang này!</p>
                   <%}
                                                 }%>
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
             <div id="CS_footer">
             	<div id="CS_footertop">
                	<div id="CS_footertop_header">
                    	<ul>
                        	<li><p>Trợ Giúp</p></li>
                            <li><p>Dịch Vụ Bán Hàng</p></li>
                            <li><p>Thông Tin Công Ty</p></li>
                            <li><p>Đăng Ký Khuyễn Mãi</p></li>
                        </ul>
                    </div><!--end CS_footertop_header-->
                    <div id="CS_footertop_content">
                    	<ul class="CS_footertext">
                        	<li><a href="#"><p>Trung tâm trợ giúp</p></a></li>
                            <li><a href="#"><p>Hương dấn mua hàng oline</p></a></li>
                            <li><a href="#"><p>Bảo hành, đổi trả</p></a></li>
                            <li><a href="#"><p>Chính sách bảo mật</p></a></li>
                        </ul>
                        <ul class="CS_footertext">
                        	<li><a href="#"><p>Dành cho doanh nghiệp</p></a></li>
                            <li><a href="#"><p>Dành cho cộng tác viên</p></a></li>
                            <li><a href="#"><p>Mua trả góp</p></a></li>
                        </ul>
                        <ul class="CS_footertext">
                        	<li><a href="#"><p>Giới thiệu</p></a></li>
                            <li><a href="#"><p>Triết lý kinh doanh</p></a></li>
                            <li><a href="#"><p>Góc báo chí</p></a></li>
                            <li><a href="#"><p>Tuyển dụng</p></a></li>
                        </ul>
                        <ul class="CS_footertext">
                        	<form class="CS_registeremail">
                            	<input type="text" placeholder="Email của bạn" class="CS_textregisteremail">
                                <input type="submit" value="Đăng ký" class="CS_btnregisteremail">
                            </form>
                        </ul>
                    </div><!--end CS_footertop_content-->
                </div><!--end CS_footertop-->
                <div id="CS_footermid">
                	<hr style="background:#666">
                    <p class="CS_footertextmid"><br>
                    	© 2012 HỌC VIỆN CÔNG NGHỆ BƯU CHÍNH VIỄN THÔNG : Hà nội: Km10 Nguyễn Trãi - Thanh Xuân - Hà Nội<br>
                    </p>
                    <p class="CS_footertextend">
                    	Email : tungnm.ptit@gmail.com hoặc mjnhtung.ptjt@gmail.com. Điên thoại : 01684091032 <br>
                        Giấy phép thiết lập trang TTĐT số 22/GP-ICP_STTTT, cấp ngày 01/01/2013
                    </p>
                </div><!--end CS_footermid-->
             </div><!--end CS_footer-->
        </div><!--end CS_wrapper-->
    </body>
</html>
