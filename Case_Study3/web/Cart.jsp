<%-- 
    Document   : Cart
    Created on : Nov 13, 2012, 11:21:23 PM
    Author     : Tung
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
         <% if(request.getParameter("mua")!=null){ %>
         <script language="javascript">
                  alert("Bạn đã đặt hàng thành công ^^.");   
				  </script>
                            <%}%>
                             
<!---------------------------------------------------------------------------------------------------------------->
			<div id="CS_url">
                            <span><a href="Home.jsp">Trang chủ </a></span> <img src="images/next_gallery_ac.png"> <span><a href="Cart.jsp">Giỏ hàng</a></span>

            </div><!--end CS_url-->
<!---------------------------------------------------------------------------------------------------------------->

			 <div id="CS_product">
             	 <div id="CS_product_content">
                    <%  
                    if(session.getAttribute("cart")!=null){
                    productDAO pdao=new productDAO(); 
                    Cart cart=(Cart)session.getAttribute("cart"); 
                    %>
               	   	<p style="font-size:18px" align="center">Tổng Tiền :
                   <span style="color:#F00"><%=cart.getTotalprice() %> VNĐ</span>
                   </p>
               	     
                       <%
                        if(cart != null){
                            ArrayList<product> ds=cart.getCart();
                            for(product p:ds){
                       %>
                       <form  method="post" action="update.jsp">
                       <input type="hidden" name="idprod" value="<%=p.getId()%>">
                       <table width="975" height="169" cellpadding="0" cellspacing="0" id="CS_table_Cart">
               	       <tr>
               	         <td height="33" colspan="2" a align="center">Sản Phẩm</td>
               	         <td width="142">Đơn giá</td>
               	         <td width="95">Số lượng</td>
               	         <td width="219">Thành tiền</td>
               	         <td width="127">Cập nhật</td>
               	         <td width="93">Xóa</td>
           	           </tr>
               	       <tr>
               	         <td width="120" height="120">
                         <img src="<%=p.getImage()%>">
                         </td>
               	         <td width="163"><%=p.getName()%></td>
               	         <td style="color:#F00"><%=p.getPrice()%> VNĐ</td>
               	         <td>
           	             <input name="amount" type="text" size="10" value="<%=p.getAmount()%>">
                         </td>
               	         <td style="color:#F00"><%=p.getDongia()%> VNĐ</td>
               	         <td><input type="submit" name="btnupdate" class="CS_btnupdate" value=""></td>
               	         <td><input type="submit" name="btndel" class="CS_btndel" value=""></td>
           	           </tr>
                           </table>
                           </form>
                           <%
                                    }
                                }
                            }
                            %>
           	       
              	   <div align="right">
                   <a href="update.jsp?mua=ok"><img src="images/iconbuy.jpg" ></a>
                   </div>
                   
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
