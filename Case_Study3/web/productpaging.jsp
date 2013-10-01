<%-- 
    Document   : productpaging
    Created on : Nov 20, 2012, 7:06:24 PM
    Author     : Tung
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@page import="entity.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%
            int kind = 1;
            if(request.getParameter("kind") != null){
                kind = Integer.parseInt(request.getParameter("kind"));
            }
            
            int display = 12;
            productDAO productDAO = new productDAO();
            int total = productDAO.getTotal(kind);
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
            listproduct = productDAO.getAllpaging(start, display,kind);
            
        %>
                    
                    <div id="CS_dt_headerright">
                    	<ul class="CS_page">
                            <%
                            String value = "";
                            for(int i = 1; i <= totalpage ; i++){
                                if(i==pageNumber){
                                value +="<li class='active'>"
										+"<span><a href='Home.jsp?kind="+kind+"&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";
                                                               }else{
                                value +="<li>"
										+"<span><a href='Home.jsp?kind="+kind+"&pageNumber="+i+"'>"+i+"</a></span>"
										+"</li>";  
                                                               }
                            }
                            out.print(value);
                            %>
                            
                        </ul>
                    </div><!--end CS_dt_headerright-->
                </div><!--end CS_product_header-->
                <div id="CS_product_content">
                	<ul class="CS_imgproduct" >
                         <%
                         
                         productDetailDAO pdDAO = new productDetailDAO();
                         value = "";
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
                                     + "	<span>  "+pd.getOs()+" </span>"
                                     + "</p>"
                                     + "<p>màn hình :"
                                     + "	<span>  "+pd.getScreen()+" </span>"
                                     + "</p>"
                                     + "</div>"
                                     + " <a href='productDetail.jsp?idprod="+listproduct.get(i).getId() +"'></a>"
                                     + "</li>";
                         }
                         out.print(value);
                        %>   
                    	
                    </ul><!--end CS_imgproduct-->
                </div><!--end CS_dienthoa_content-->
