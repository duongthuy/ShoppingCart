<%-- 
    Document   : searchprocess
    Created on : Nov 20, 2012, 3:14:19 PM
    Author     : MinhTu-75
--%>

<%@page import="entity.product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.productDAO"%>
<%

String s = "";
if(request.getParameter("search")!=null){
    s = request.getParameter("search");
}

int display = 6;
            productDAO productDAO = new productDAO();
            int total = productDAO.getTotalsearch(s);
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
            listproduct = productDAO.getresultpaging(start, display, s);



%>
<center><table width="600" border="0" cellpadding="0" cellspacing="0" >
 <%
                         for(int i = 0; i < listproduct.size(); i++){
                           
                        %>   
                    	
                        
               	       <tr>
                           <td width="200" height="140" align="center" style="border-top:2px solid #CCC">
                               <a href="productDetail.jsp?idprod=<%= listproduct.get(i).getId() %>"><img src="<%= listproduct.get(i).getImage() %>"></a>
                           </td>
               	         <td width="400" style="border-top:2px solid #CCC">
                             <a href="productDetail.jsp?idprod=<%= listproduct.get(i).getId() %>"><span style="color:#00C"><%= listproduct.get(i).getName() %></span></a><br>
                            Gía : <span style="color:#F00"><%= listproduct.get(i).getPrice() %></span>
                             
                         </td>
               	         </tr>
                         <%}%>
    </table></center>
                         <div id="CS_dt_headerright">
                    	<ul class="CS_page">
                            <%
                        if(totalpage > 1){
                            String value = "";
                            for(int i = 1; i <= totalpage ; i++){
                                if(i==pageNumber){
                                value +="<li class='active'>"
										+"<span><a href='search.jsp?search="+s+"&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";
                                                                                             } else{
                                value +="<li>"
										+"<span><a href='search.jsp?search="+s+"&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";                                  
                                                               }
                            }
                            out.print(value);
                            }
                            %>
                            
                        </ul>
                    </div><!--end CS_dt_headerright-->