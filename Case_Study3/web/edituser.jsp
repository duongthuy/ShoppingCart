<%-- 
    Document   : edituser
    Created on : Nov 19, 2012, 9:07:52 PM
    Author     : Duong
--%>

<%@page import="bean.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.adminDAO"%>
<%@page import="entity.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
            
            int display = 6;
            adminDAO adDAO = new adminDAO();
            int total = adDAO.getTotal();
            int totalpage;
            if(total > display){
                if(total%display == 0){
                    totalpage = total/display;
                  }else totalpage = total/display+1;
            }else {
                totalpage = 1;
            }
            
            
            int pageNumber = 1;
              if(request.getParameter("pageNumber") != null&&request.getParameter("kind").equals("1")){
                pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
            }
            
            int start = display*(pageNumber - 1);
            
            ArrayList<Admin> listad = new ArrayList<Admin>();
            listad = adDAO.getAllpaging(start, display);
            
        %>
                    
                    
               
                         <%
                         for(int i = 0; i < listad.size(); i++){
                           
                        %>   
                    	
                        <form  method="post" action="usereditprocess.jsp">
                       <input type="hidden" name="idu" value="<%=listad.get(i).getId()%>">
                       <center>
                       <table width="900" height="169" cellpadding="0" cellspacing="0" id="CS_table_Cart">
               	       <tr>
               	         <td height="33" width="250">tên người dùng</td>
               	         <td width="150">mật khẩu</td>
               	         <td width="300">email</td>
               	         <td width="100">Cập nhật</td>
               	         <td width="100">Xóa</td>
           	           </tr>
               	       <tr>
               	         <td width="232" height="120">
                         
                         <input name="name" type="text" value="<%=listad.get(i).getUsername()%>" size="25" class="CS_text">
                         </td>
               	         <td style="color:#F00">
                         <input name="pass" type="text" value="<%=listad.get(i).getPassword()%>" size="15" class="CS_text">
                         </td>
               	         <td>
           	             <input name="email" type="text" value="<%=listad.get(i).getEmail()%>" size="35" class="CS_text">
                         </td>
               	         <td><input type="submit" name="btnupdate" class="CS_btnupdate" value=""></td>
               	         <td><input type="submit" name="btndel" class="CS_btndel" value=""></td>
           	           </tr>
                           </table>
                       </center>
                           </form>
                         <%
                            }
                         %>
                         
                         <p style="font-size:18px;color:#03C;" align="center">Thêm User</p>
                   	<form  method="post" action="usereditprocess.jsp">
                       <center>
                       <table width="900" height="169" cellpadding="0" cellspacing="0" id="CS_table_Cart" >
               	       <tr>
               	         <td height="33" width="250" >tên người dùng</td>
               	         <td width="150">mật khẩu</td>
               	         <td width="400">email</td>
               	         <td width="100">Thêm</td>
           	           </tr>
               	       <tr>
               	        
               	         <td width="250">
                         <input name="name" type="text" value="" size="25" class="CS_text">
                         </td>
               	         <td style="color:#F00">
                         <input name="pass" type="text" value="" size="15" class="CS_text">
                         </td>
               	         <td>
           	             <input name="email" type="text" value="" size="35" class="CS_text">
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
                                if(i==pageNumber){
                                value +="<li class='active'>"
										+"<span><a href='admin.jsp?kind=1&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";
                                                               }else{
                                value +="<li>"
										+"<span><a href='admin.jsp?kind=1&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";    
                                                               }
                            }
                            out.print(value);
                            %>
                            
                        </ul>
                    </div><!--end CS_dt_headerright-->
                    
