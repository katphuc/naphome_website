<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar">
    <div class="logo-details">
        <a href="Statistical"><img src="../img/logo_nap.png" alt="" style="width: 100px"></a>
    </div>
    <div class="user-name-menu">
        <i class="fa-solid fa-circle-user"></i>
        <span><%= session.getAttribute("name") %></span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="Statistical" class="active">
                <i class="fa-solid fa-border-all"></i>
                <span class="links_name">Trang Chủ</span>
            </a>
        </li>
        <li>
            <a href="ProductAdmin">
                <i class="fa-solid fa-box-open"></i>
                <span class="links_name">Quản Lý Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="AddProductAdmin">
                <i class="fa-solid fa-square-plus"></i>
                <span class="links_name">Thêm Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-note-sticky"></i>
                <span class="links_name">Quản Lý Danh Mục</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-square-plus"></i>
                <span class="links_name">Thêm Danh Mục</span>
            </a>
        </li>
        <li>
            <a href="BlogAdmin">
                <i class="fa-solid fa-newspaper"></i>
                <span class="links_name">Quản Lý Tin Tức</span>
            </a>
        </li>
        <li>
            <a href="AddNewsAdmin">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Thêm Tin Tức</span>
            </a>
        </li>
<%--        <li>--%>
<%--            <a href="">--%>
<%--                <i class="fa-solid fa-boxes-packing"></i>--%>
<%--                <span class="links_name">Quản Lý Đơn Hàng</span>--%>
<%--            </a>--%>
<%--        </li>--%>
        <li>
            <a href="">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Quản Lý Tài Khoản</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-square-plus"></i>
                <span class="links_name">Thêm Tài Khoản</span>
            </a>
        </li>
<%--        <li>--%>
<%--            <a href="">--%>
<%--                <i class="fa-solid fa-square-poll-vertical"></i>--%>
<%--                <span class="links_name">Thống Kê Chi Tiết</span>--%>
<%--            </a>--%>
<%--        </li>--%>

        <li class="log_out">
            <a href="LogoutServlet">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>


