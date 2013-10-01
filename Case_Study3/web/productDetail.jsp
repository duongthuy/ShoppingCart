<%-- 
    Document   : productDetail
    Created on : Nov 20, 2012, 8:04:19 PM
    Author     : Tung
--%>

<%@page import="entity.*"%>
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
                int id = Integer.parseInt(request.getParameter("idprod"));
                productDAO pdao=new productDAO(); 
                product p=pdao.getproduct(id);
                productDetailDAO dtDAO = new productDetailDAO();
                productDetail detail = new productDetail();
                detail = dtDAO.getproductDetail(p.getIdDetail());
            %>
<!---------------------------------------------------------------------------------------------------------------->
			<div id="CS_url">
                            <span><a href="Home.jsp">Trang chủ </a></span> <img src="images/next_gallery_ac.png"> <span><a href="productlist.jsp?kind=1">Sản phẩm</a></span>
                                </span>
            </div><!--end CS_url-->
<!---------------------------------------------------------------------------------------------------------------->

			<div id="CS_product_detail">
            	<div id="CS_product_top">
                    <div id="CS_imgproduct">
                        <div id="img_main">
                            <p>Điện thoại di dông <%=p.getName()%></p>
                            <img src="images/large/dien-thoai-di-dong-HTC-Windows-Phone-8X-1.jpg" name="main_img"/>
                        </div>
                        <div id="img_icon" >
                            <img src="images/smallimg/1.jpg" onmouseover="thaydoi(0);"/>
                            <img src="images/smallimg/2.jpg" onmouseover="thaydoi(1);"/>
                            <img src="images/smallimg/3.jpg" onmouseover="thaydoi(2);"/>
                            <img src="images/smallimg/4.jpg" onmouseover="thaydoi(3);"/>
                            <img src="images/smallimg/5.jpg" onmouseover="thaydoi(4);"/>
                        </div>
                    </div><!--end CS_imgproduct-->
                    <div id="CS_prod_content">
                        <div id="CS_prod_top">
                            <p class="CS_prod_name"><%=p.getName()%></p>
                            <p>giá :<br>
                                <span><%=p.getPrice()%></span>
                            </p>
                            <br>
                            <form action="process.jsp" method="post">
                            	<input type="hidden" name="idprod" value="<%=p.getId()%>">
                                <input type="submit" value="" class="CS_btnmuasp" name="mua">
                                
                            </form>
                            <%
                                if(request.getParameter("ok")!=null){
                                    %>
                                    <p style="color: red; font-size: 14px;">Bạn chưa đăng nhập</p>
                                    <%
                                }
                            %>
                                
                            <br>
                            <p class="CS_prod_config">Hệ điều hành: <%= detail.getOs() %></p>
                            <p class="CS_prod_config">CPU: <%= detail.getCpu() %></p>
                            <p class="CS_prod_config">Màn hình: <%= detail.getScreen() %></p>
                            <p class="CS_prod_config">Camera: <%= detail.getCamera() %></p>
                            <p class="CS_prod_config">Dung lượng pin: <%= detail.getPin() %></p>
                        </div><!--end CS_prod_top-->
                        <div id="CS_prod_mid">
                            <p>Đặt trước HTC One X+ nhận ngay quà tặng đến 5,5 triệu : tai nghe beat + gói quà tặng 1 triệu + 25G tài khoản trong Dropbox</p>
                        </div><!-- end CS_prod_mid-->
                        <div id="CS_prod_bottom">
                            <img src="images/callconsulting.png" class="CS_prod_img">
                            <p class="CS_prod_help">
                                Tư vấn Điện thoại di động: gọi 
                                <span>(08)38.102.102 </span>hoặc 
                                <span>1900.561.292</span> <br>
                                <span style="font-size:12px;color:#666;">Nhánh 11: Mua hàng. Nhánh 21: Kỹ thuật. từ 7:30-22:00 hàng ngày</span>
                            </p>
                        </div><!--end CS_prod_bottom-->
                    </div><!--end CS_prod_content-->
                </div><!--end CS_product_top-->
              <div id="CS_config">
                	<p>Cấu hình chi tiết</p>
                <table width="975" border="0" cellspacing="0" cellpadding="0" id="CS_table">
                      <tr>
                        <td width="200" rowspan="4" class="CS_cols1" valign="top">Màn hình hiển thị</td>
                        <td width="240" height="25" class="CS_cols2">Loại màn hình</td>
                        <td width="528" class="CS_cols3">Super LCD2, 16 triệu màu</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2" valign="top">Độ phân giải</td>
                        <td class="CS_cols3">720 x 1280 pixels</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Kích thước màn hình</td>
                        <td class="CS_cols3">4.7 inches</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Hỗ trợ cảm ứng</td>
                        <td class="CS_cols3">Cảm ứng điện dung, đa điểm</td>
                      </tr>
                      <tr>
                        <td rowspan="10" class="CS_cols1" valign="top">Cấu hình chi tiết</td>
                        <td class="CS_cols2">Hệ điều hành</td>
                        <td class="CS_cols3">Android OS, v4.1.1 (Jelly Bean)</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Chipset</td>
                        <td class="CS_cols3">nVidia Tegra 3 AP37</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">CPU</td>
                        <td class="CS_cols3">Quad-core 1.7 GHz</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">GPU</td>
                        <td class="CS_cols3">ULP GeForce</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">RAM</td>
                        <td class="CS_cols3">1 GB</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Bộ nhớ trong (ROM)</td>
                        <td class="CS_cols3">64 GB</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Danh bạ</td>
                        <td class="CS_cols3">Không giới hạn</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">gôn ngữ</td>
                        <td class="CS_cols3">Tiếng Anh, Tiếng Việt</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Thẻ nhớ ngoài</td>
                        <td class="CS_cols3">Không</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Hỗ trợ thẻ tối đa</td>
                        <td class="CS_cols3">-</td>
                      </tr>
                      <tr>
                        <td rowspan="5" class="CS_cols1" valign="top">Camera</td>
                        <td class="CS_cols2">Camera sau</td>
                        <td class="CS_cols3">8.0 MP</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Camera trước</td>
                        <td class="CS_cols3">1.6 MP, 720p@30fps</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Tính năng camera</td>
                        <td class="CS_cols3">LED flash<br>
                          Lấy nét tự động, Chạm để lấy nét<br>
                          Chụp ảnh và quay phim cùng lúc<br>
                          geo-tagging<br>
                          Nhận diện khuôn mặt<br>
                        Chụp ảnh HDR</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Quay phim</td>
                        <td class="CS_cols3">FullHD 1080p@30fps</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Videocall</td>
                        <td class="CS_cols3">Không</td>
                      </tr>
                      <tr>
                        <td rowspan="11" class="CS_cols1" valign="top">Kết nối dữ liệu</td>
                        <td class="CS_cols2">Băng tần 2G</td>
                        <td class="CS_cols3">GSM 850/900/1800/1900</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Băng tần 3G, 4G</td>
                        <td class="CS_cols3">HSDPA 850/900/1900/2100</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Tốc độ 3G, 4G</td>
                        <td class="CS_cols3">HSPDA, HSUPA</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Hỗ trợ đa SIM</td>
                        <td class="CS_cols3">Không</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">GPS</td>
                        <td class="CS_cols3">A-GPS và GLONASS</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Bluetooth</td>
                        <td class="CS_cols3">V4.0 with A2DP</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">GPRS/EDGE</td>
                        <td class="CS_cols3">class 12</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Wifi</td>
                        <td class="CS_cols3">Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, Wi-Fi hotspot</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Trình duyệt</td>
                        <td class="CS_cols3">HTML5, HTML, Wap 2.0/xHTML</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Kết nối máy tính</td>
                        <td class="CS_cols3">Micro USB</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Kết nối khác</td>
                        <td class="CS_cols3">Không</td>
                      </tr>
                      <tr>
                        <td rowspan="7" class="CS_cols1" valign="top">Giải trí &amp; Ứng dụng</td>
                        <td class="CS_cols2">Xem phim</td>
                        <td class="CS_cols3">H.263, MP4, Xvid, H.264(MPEG4-AVC), DivX, 3GP, MKV, WMV</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Nghe nhạc</td>
                        <td class="CS_cols3">MP3, AAC+, WMA, eAAC+, AMR, WAV</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Ghi âm</td>
                        <td class="CS_cols3">Không</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Giới hạn cuộc gọi</td>
                        <td class="CS_cols3">&nbsp;</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">FM radio</td>
                        <td class="CS_cols3">Có</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Jack tai nghe</td>
                        <td class="CS_cols3">3.5 mm</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Chức năng khác</td>
                        <td class="CS_cols3">Google Search, Maps, Gmail, YouTube, Calendar, Google Talk<br>
                        Chức năng la bàn số</td>
                      </tr>
                      <tr>
                        <td rowspan="6" class="CS_cols1" valign="top">Thông số vật lý</td>
                        <td class="CS_cols2">Kiểu dáng</td>
                        <td class="CS_cols3">Thanh + Cảm ứng</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Kích thước</td>
                        <td class="CS_cols3">134.4 x 69.9 x 8.9 mm</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Trọng lượng (g)</td>
                        <td class="CS_cols3">135</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Loại pin</td>
                        <td class="CS_cols3">Pin chuẩn Li-Ion</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Bảo hành</td>
                        <td class="CS_cols3">12 tháng</td>
                      </tr>
                      <tr>
                        <td class="CS_cols2">Dung lượng pin</td>
                        <td class="CS_cols3">2100 mAh</td>
                      </tr>
                </table>
                </div><!--end CS_config-->
            </div><!-- end CS_product_detail -->

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

