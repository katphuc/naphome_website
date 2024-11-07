<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý | Ngân Anh Phát</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="view-box" style="text-align: center">
            <img src="img/logo.png" alt="logo">
            <h1 style="font-weight: bold; color: white; padding-bottom: 50px; text-shadow: 2px 2px 4px #000000">CHÀO MỪNG ĐẾN TRANG ADMIN</h1>
<%--            <div class="overview-boxes">--%>
<%--                <a href="ProductAdmin">--%>
<%--                    <div class="right-side">--%>
<%--                        <div class="box-topic">Quản Lý Sản Phẩm</div>--%>
<%--                    </div>--%>
<%--                </a>--%>
<%--                <a href="AddProductAdmin">--%>
<%--                    <div class="right-side">--%>
<%--                        <div class="box-topic">Thêm Sản Phẩm</div>--%>
<%--                    </div>--%>
<%--                </a>--%>
<%--                <a href="BlogAdmin">--%>
<%--                    <div class="right-side">--%>
<%--                        <div class="box-topic">Quản Lý Tin Tức</div>--%>
<%--                    </div>--%>
<%--                </a>--%>
<%--                <a href="AddNewsAdmin">--%>
<%--                        <div class="right-side">--%>
<%--                            <div class="box-topic">Thêm Tin Tức</div>--%>
<%--                        </div>--%>
<%--                </a>--%>
<%--            </div>--%>
        </div>
        <div class="announcement">
            <h3 style="font-weight: bold">Thông Báo Từ Admin</h3>
            <div class="announce">
                <h4 style="text-align: center">xin chào, hiện chưa có thông báo mới</h4>
            </div>
        </div>
    </div>
</section>
</body>
</html>
