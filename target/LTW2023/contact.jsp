<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Liên hệ</title>

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
    <link rel="stylesheet" href="css/contact.css" type="text/css">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <style>
        .contact__form__title h2 {
            color: white;
        }

        .site-btn {
            background: linear-gradient(to right, #5d4848, #d83838);
            font-weight: bold;
            border-radius: 5px;
        }
    </style>
</head>

<body>

<!-- Header Section Begin -->
<%@include file="include/header.jsp" %>
<!-- Header Section End -->

<!-- Contact Section Begin -->
<section class="contact spad">
    <div class="container-fluid no-padding">
        <img src="img/banner/banner_contact.png" alt="ngân anh phát tạo dựng giá trị khẳng định
tương lai" style="padding-bottom: 20px">
        <div class="row contact-map">
            <div class="col-md-1"></div>
            <div class="col-md-4">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3917.133050511073!2d106.8638096758272!3d10.953320789206382!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174df2fa4691b41%3A0xc2afacd12e4778d9!2zQ8O0bmcgVHkgVE5ISCBOZ8OibiBBbmggUGjDoXQ!5e0!3m2!1sen!2s!4v1730789572630!5m2!1sen!2s"
                        width="600" height="450"
                        style="border:0; border-radius:20px;box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);"
                        allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="col-md-1"></div>
            <div class="location col-md-4">
                <h4 class="map-cont">Địa chỉ cụ thể</h4>
                <p><i class="fa-solid fa-map-location-dot"></i>: D3, KP3, Phường Tam Hòa, TP.Biên Hòa - Đồng Nai</p>
                <p><i class="fa-solid fa-earth-asia"></i>: www.ngananhphat.com</p>
                <a href="https://maps.app.goo.gl/FEFGQ9xEXYKQWxzc6" target="_blank"><u>Truy cập Google Maps</u></a>

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
</section>
<!-- Contact Section End -->
<div class="contact-phone spad">
    <div class="container">
        <div class="contact-phone-title" style="padding-bottom: 50px">
            <h2 style="font-size: 35px; color:black; text-align: center">Tổng đài tư vấn hỗ trợ trực tiếp 24/7</h2>
        </div>
        <div class="row contact-phone-second">
            <div class="col-lg-2"></div>
            <div class="col-lg-4" style="text-align: center">
                <i class="fa-solid fa-phone-volume"></i>
                <p>(+84) 2513 857 563</p>
            </div>
            <div class="col-lg-4" style="text-align: center">
                <i class="fa-regular fa-envelope"></i>
                <p>info@ngananhphat.com, sales@ngananhphat.com</p>
            </div>
            <div class="col-lg-2"></div>
        </div>
    </div>
</div>

<!-- Contact Form Begin -->
<div class="contact-form spad">
    <div class="container contact-messenger">
        <div class="row">
            <div class="col-lg-12">
                <div class="contact__form__title">
                    <h2 style="font-size: 35px">Bạn cần giúp gì? Để lại lời nhắn</h2>
                </div>
            </div>
        </div>
        <form action="#">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <input type="text" placeholder="Tên của bạn">
                </div>
                <div class="col-lg-6 col-md-6">
                    <input type="text" placeholder="Email của bạn">
                </div>
                <div class="col-lg-12 text-center">
                    <textarea placeholder="Lời nhắn của bạn"></textarea>
                    <button type="submit" class="site-btn">Gửi tin nhắn</button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Contact Form End -->
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
<script src="js/scrollToTop.js"></script>


</body>

</html>