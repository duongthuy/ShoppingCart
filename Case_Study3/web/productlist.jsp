<%-- 
    Document   : productlist
    Created on : Nov 20, 2012, 7:49:50 PM
    Author     : Tung
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
                <jsp:include page="menu.jsp"></jsp:include>
            <%
            int kind = 1;
                                if(request.getParameter("kind") != null){
                                    kind = Integer.parseInt(request.getParameter("kind"));
                                }
            %>
<!---------------------------------------------------------------------------------------------------------------->
			<div id="CS_url">
                            <span><a href="Home.jsp">Trang chủ </a></span> <img src="images/next_gallery_ac.png"> <span><a href="productlist.jsp?kind=<%=kind%>">Sản phẩm</a></span>
            </div><!--end CS_url-->
<!---------------------------------------------------------------------------------------------------------------->

			 <div id="CS_product">
             	 <div id="CS_product_content">
                	<ul class="CS_imgproduct" >
                         <%
                                productDetailDAO pdDAO = new productDetailDAO();
				productDAO productDAO = new productDAO();
				ArrayList<product> listproduct = new ArrayList<product>();
           			listproduct = productDAO.getAllproduct(kind);
						 
                         String value = "";
                         for(int i = 0; i < listproduct.size(); i++){
                             productDetail pd = new productDetail();
                             pd = pdDAO.getproductDetail(listproduct.get(i).getIdDetail());
                             value +="<li>"
                                     + "<img src='"+listproduct.get(i).getImage()+"'>"
                                     + "<p class='CS_name'>"
									 + listproduct.get(i).getName()
									 + "</p>"
									 + "<p style='color:#F00'>"+listproduct.get(i).getPrice() +" VND</p>"
                                     + "<div class='CS_info'>"
                                     + "<p>Giá :"
                                     + "	<span style='color:#F00'>"+listproduct.get(i).getPrice() +" VND</span>"
                                     + "</p>"
                                     + "<p>Hệ điều hành :"
                                     + "	<span> "+pd.getOs() +" </span>"
                                     + "</p>"
                                     + "<p>màn hình :"
                                     + "	<span> "+pd.getScreen() +" </span>"
                                     + "</p>"
                                     + "</div>"
                                     + " <a href='productDetail.jsp?idprod="+listproduct.get(i).getId() +"'></a>"
                                     + "</li>";
                         }
                         out.print(value);
                        %>  
                    	
                    </ul><!--end CS_imgproduct-->
                </div><!--end CS_dienthoa_content-->
                
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
