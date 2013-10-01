<%-- 
    Document   : menu
    Created on : Nov 21, 2012, 1:21:37 AM
    Author     : Tung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="CS_wrapper_menu">
            
                    <ul id="CS_nav" >
                        <li>
                            <a href="#">Danh mục sản phẩm</a>
                            <ul>
                                <li><a href="productlist.jsp?kind=1">Điện thoại</a>
                                    <ul>
                                        <li><a href="productlist.jsp?kind=1">Điện thoai di động</a>
                                            <ul>
                                                <li><a href="#">Samsung</a></li>
                                                <li><a href="#">Nokia</a></li>
                                                <li><a href="#">LG</a></li>
                                                <li><a href="#">Apple</a></li>
                                                <li><a href="#">Sony Erisson</a></li>
                                                <li><a href="#">HTC</a></li>
                                                <li><a href="#">Blackberry</a></li>
                                            </ul><!-- menu cấp 3 -->
                                        </li>
                                        <li><a href="#">Phụ kiên ĐTDĐ</a></li>
                                        <li><a href="#">Phần mềm ĐTDĐ</a> </li>
                                    </ul><!-- menu cấp 2 -->
                                </li>
                                <li>
                                    <a href="productlist.jsp?kind=3">Laptop</a>
                                    <ul>
                                        <li><a href="productlist.jsp?kind=3">Laptop</a>
                                            <ul>
                                                <li><a href="#">Acer</a></li>
                                                <li><a href="#">Asus</a></li>
                                                <li><a href="#">Dell</a></li>
                                                <li><a href="#">HP</a></li>
                                                <li><a href="#">Samsung</a></li>
                                                <li><a href="#">Apple</a></li>
                                                <li><a href="#">Sony</a></li>
                                            </ul><!-- menu cấp 3 -->
                                        </li>
                                        <li><a href="#">Phụ kiên product</a></li>
                                        <li><a href="#">Phần mềm product</a> </li>
                                    </ul><!-- menu cấp 2 -->
                                </li>
                                <li>
                                    <a href="productlist.jsp?kind=2">Máy tính bảng</a>
                                    <ul>
                                        <li><a href="productlist.jsp?kind=2">Máy tính bảng</a>
                                            <ul>
                                                <li><a href="#">Acer</a></li>
                                                <li><a href="#">Asus</a></li>
                                                <li><a href="#">Dell</a></li>
                                                <li><a href="#">HP</a></li>
                                                <li><a href="#">Samsung</a></li>
                                                <li><a href="#">Apple</a></li>
                                                <li><a href="#">Sony</a></li>
                                            </ul><!-- menu cấp 3 -->
                                        </li>
                                        <li><a href="#">Phụ kiện</a> </li>
                                    </ul><!-- menu cấp 2 -->
                                </li>
                                <li><a href="#">Máy ảnh, Máy quay</a></li>
                                <li><a href="#">Giải trí số</a></li>
                                <li><a href="#">Phụ kiện</a></li>
                                <li><a href="#">Khuyến mãi</a></li>
                            </ul><!-- menu cấp 1 -->
                        </li>
                        <li><a href="#">Mua bán</a></li>
                        <li><a href="#">Tin tức</a>
                        </li>
                        <li><a href="#">Khuyễn mãi</a>
                        </li>
                        <li><a href="#">Tìm siêu thị</a></li>
                        
                        <form class="CS_timkiem" action="search.jsp" method="post">
                            <input name="search" type="text" placeholder="Tìm kiếm" class="CS_textsearch">
                                 <input type="submit" value="Tìm kiếm" class="CS_btnsearch">
                            </form>
                        
                    </ul><!-- Cấp 0 (Lớn nhất) -->
                
            </div><!--end CS_wrapper_menu -->
