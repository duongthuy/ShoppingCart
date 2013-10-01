<%-- 
    Document   : editproduct
    Created on : Nov 20, 2012, 8:34:26 PM
    Author     : Duong
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.productDAO"%>
<%@page import="entity.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
            int kind = 1;
            if(request.getParameter("kind") != null){
                kind = Integer.parseInt(request.getParameter("kind"));
            }
            int display = 6;
            productDAO productDAO = new productDAO();
            int total = productDAO.getTotal(kind-1);
            int totalpage;
            if(total > display){
                if(total%display == 0){
                    totalpage = total/display;
                  }else totalpage = total/display+1;
            }else {
                totalpage = 1;
            }
            
            
            int pageNumber = 1;
              if(request.getParameter("pageNumber") != null){
                pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
            }
            
            int start = display*(pageNumber - 1);
            
            ArrayList<product> listproduct = new ArrayList<product>();
            listproduct = productDAO.getAllpaging(start, display,kind-1);
            
        %>
                    
                    
               
                         <%
                         for(int i = 0; i < listproduct.size(); i++){
                           
                        %>   
                    	
                        <form  method="post" action="producteditprocess.jsp?kind=<%=kind%>">
                       <input type="hidden" name="idprod" value="<%=listproduct.get(i).getId()%>">
                       <table width="975" height="169" cellpadding="0" cellspacing="0" id="CS_table_Cart">
               	       <tr>
               	         <td height="33" colspan="2" a align="center">Sản Phẩm</td>
               	         <td width="133">Đơn giá</td>
               	         <td width="250">Url image</td>
                         
               	         <td width="100">Cập nhật</td>
               	         <td width="100">Xóa</td>
           	           </tr>
               	       <tr>
               	         <td width="124" height="120">
                         <img src="<%=listproduct.get(i).getImage()%>">
                         </td>
               	         <td width="207">
                         <input name="name" type="text" value="<%=listproduct.get(i).getName()%>" size="25" class="CS_text">
                         </td>
               	         <td style="color:#F00">
                         <input name="price" type="text" value="<%=listproduct.get(i).getPrice()%>" size="15" class="CS_text">
                         </td>
               	         <td>
           	             <input name="urlimg" type="text" value="<%=listproduct.get(i).getImage()%>" size="35" class="CS_text">
                         </td>
                         
               	         <td><input type="submit" name="btnupdate" class="CS_btnupdate" value=""></td>
               	         <td><input type="submit" name="btndel" class="CS_btndel" value=""></td>
           	           </tr>
                           </table>
                           </form>
                         <%
                            }
                         %>
                         <p style="font-size:18px;color:#03C;" align="center">Thêm sản phẩm</p>
                   	<form  method="post" action="producteditprocess.jsp?kind=<%=kind%>">
                       <center>
                       <table width="900" height="169" cellpadding="0" cellspacing="0" id="CS_table_Cart" >
               	       <tr>
               	         <td height="33" width="250" >Sản Phẩm</td>
               	         <td width="150">Đơn giá</td>
               	         <td width="35">Url image</td>
                         
               	         <td width="100">Thêm</td>
           	           </tr>
               	       <tr>
               	        
               	         <td width="250">
                         <input name="name" type="text" value="" size="25" class="CS_text">
                         </td>
               	         <td style="color:#F00">
                         <input name="price" type="text" value="" size="15" class="CS_text">
                         </td>
               	         <td>
           	             <input name="urlimg" type="text" value="" size="35" class="CS_text">
                         </td>
                         
               	         <td><input type="submit" name="btnadd" class="CS_btnadd" value=""></td>
           	           </tr>
                           </table>
                           </center>
                           </form>
                         <div id="CS_dt_headerright">
                    	<ul class="CS_page">
                            <%
                            String value = "";
                            for(int i = 1; i <= totalpage ; i++){
                                if(i == pageNumber){
                                value +="<li class='active'>"
										+"<span><a href='admin.jsp?kind="+kind+"&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";
                                                               }else{
                                    value +="<li >"
										+"<span><a href='admin.jsp?kind="+kind+"&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";
                                                               }
                            }
                            out.print(value);
                            %>
                            
                        </ul>
                    </div><!--end CS_dt_headerright-->
                    
