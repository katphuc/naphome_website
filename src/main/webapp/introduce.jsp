<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Giới thiệu | Ngân Anh Phát</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/introduce.css" type="text/css">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <style>
        h1 {
            font-size: 30px;
            padding-top: 50px;
            color: black;
            font-weight: bold;
            text-align: center;
        }

        p.introduce-p {
            color: black;
            padding: 40px 386px;
            text-align: center;
        }

        h2 {
            color: darkred;
            text-align: center;
            font-style: italic;
            font-weight: bold;
            margin-top: 110px;

        }

        p.intro-1 {
            color: black;
            padding: 20px 127px;
        }
        h4{
            color: black;
            font-weight: bold;
            font-size: 40px;
            padding-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body>
<%@include file="include/header.jsp" %>
<section class="introduce">
    <c:forEach var="abouts" items="${abouts}">
    <div>
        <h1 class="h1-introduce">${abouts.title_first}</h1>
        <p class="introduce-p">${abouts.content_first}</p>
    </div>
    <div class="container-fluid">
        <div class="row first-intro">
            <div class="col-md-4">
                <img src="${abouts.img_second}"
                     style="border-radius: 5%">
            </div>
            <div class="col-md-8">
                <h2>${abouts.title_second}</h2>
                <p class="intro-1">${abouts.content_second}</p>
            </div>

        </div>
        <div class="row first-intro">
            <div class="col-md-8">
                <h2>${abouts.title_third}</h2>
                <p class="intro-1">${abouts.content_third}</p>
            </div>
            <div class="col-md-4">
                <img src="${abouts.img_third}"
                     style="border-radius: 5%">
            </div>

        </div>
        </c:forEach>

<%--        <div class="row first-intro">--%>
<%--            <div class="col-md-4">--%>
<%--                <img src="img/banner/introduce-banner-1.png" alt="ngân anh phát giải pháp cơ khí"--%>
<%--                     style="border-radius: 5%">--%>
<%--            </div>--%>
<%--            <div class="col-md-8">--%>
<%--                <h2>UY TÍN - CHẤT LƯỢNG</h2>--%>
<%--                <p class="intro-1">Tiêu chí hàng đầu của Ngân Anh Phát chính là uy tin và chất lượng.--%>
<%--                    Mỗi sản phẩm làm ra đều tỉ mỉ trong từng chi tiết. Vì thế, Ngân Anh Phát--%>
<%--                    đã từng ngày khẳng định uy tín về dịch vụ trong ngành cơ khí chế tạo.</p>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="row last-contact">
            <div class="col-md-4">
            </div>
            <div class="intro-contact col-md-4">
                <h4>Liên hệ với chúng tôi</h4>
                <p>Để nhận được báo giá tốt nhất <strong>24/7</strong>, hãy
                 liên hệ ngay!</p>
                <a href="contact.jsp" class="icon-link" >
                    <i class="fa-solid fa-arrow-right-from-bracket icon-right"></i>
                </a>
            </div>
            <div class="col-md-4">

            </div>
        </div>
    </div>

</section>
<!-- Nút cuộn lên đầu trang -->
<button id="scrollToTopBtn" class="scroll-to-top"><i class="fa-solid fa-arrow-up"></i></button>
<!-- Footer Section Begin -->
<%@include file="include/footer.jsp" %>
<!-- Footer Section End -->

<!-- Js Plugins -->


<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script src="js/main.js"></script>
<script src="js/scrollToTop.js"></script>

</body>

</html>