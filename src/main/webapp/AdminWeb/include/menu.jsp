<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar">
    <div class="logo-details">
        <a href="Statistical"><img src="../img/logo_nap.png" style="width: 100px; height: 100px"></a>
    </div>
    <div class="menu__user">
        <a><i class="fa-solid fa-circle-user" style="color: white; font-size: 25px"></i>
            <span style="color: white"><%= session.getAttribute("name") %></span>
        </a>
    </div>
    <ul class="nav-links">

        <li>
            <a href="/Statistical" class="active">
                <i class="fa-solid fa-border-all"></i>
                <span class="links_name">Trang chủ</span>
            </a>
        </li>
                <li>
                    <a href=/StatisticalAdmin>
                        <i class="fa-solid fa-chart-line"></i>
                        <span class="links_name">Thống Kê Chi Tiết</span>
                    </a>
                </li>
        <li>
            <a href="">
                <i class="fa-solid fa-box-archive"></i>
                <span class="links_name">Quản Lý Sản Phẩm</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-box"></i>
                <span class="links_name">Thêm sản phẩm</span>
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
                <i class="fa-solid fa-book-open"></i>
                <span class="links_name">Thêm Danh Mục</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-newspaper"></i>
                <span class="links_name">Quản Lý Tin Tức</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-file"></i>
                <span class="links_name">Thêm Tin Tức</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-parachute-box"></i>
                <span class="links_name">Quản Lý Đơn Hàng</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-users"></i>
                <span class="links_name">Quản Lý Tài Khoản</span>
            </a>
        </li>
        <li>
            <a href="">
                <i class="fa-solid fa-user"></i>
                <span class="links_name">Thêm Tài Khoản</span>
            </a>
        </li>
        <li class="log_out">
            <a href="/LogoutServlet">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span class="links_name">Đăng xuất</span>
            </a>
        </li>
    </ul>
</div>


