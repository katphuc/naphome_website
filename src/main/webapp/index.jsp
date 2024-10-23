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
    <title>Ngân Anh Phát | Gia công cơ khí</title>

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
    <link rel="icon" href="img/favicon.png" type="image/png">

    <style>
        .hero{
            padding-top: 10px;
        }
        .hero__item {
            display: flex;
        }

        .hero__item img {
            width: 100%;
        }

        .slider-arrow {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            font-size: 24px;
            background: rgba(255, 255, 255, 0.7);
            padding: 10px 15px;
            border-radius: 50%;
            color: #333;
            z-index: 1;
        }

        .prev-arrow {
            left: 10px;
        }

        .next-arrow {
            right: 10px;
        }

    </style>
</head>

<body>
<%@include file="include/header.jsp" %>
<!-- Hero Section Begin -->
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-1">
            </div>
            <div class="col-lg-10">
                <div class="hero__container">
                    <div class="hero__item set-bg" data-setbg="img/hero/banner2.png">
                        <div class="hero__text">
                            <!-- Content for the first banner -->
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="img/hero/banner3.png">
                        <div class="hero__text">
                            <!-- Content for the second banner -->
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="img/hero/banner4.png">
                        <div class="hero__text">
                            <!-- Content for the third banner -->
                        </div>
                    </div>
                    <!-- Add more banner items as needed -->
                    <div class="slider-arrow prev-arrow" onclick="changeSlide(-1)" style="user-select: none">‹</div>
                    <div class="slider-arrow next-arrow" onclick="changeSlide(1)" style="user-select: none">›</div>
                </div>
            </div>
            <div class="col-lg-1">
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <div class="title">
                        <h2 style="user-select: none">Mua nhanh giảm ngay</h2>
                    </div>
                    <a id="eye-view-all" href="index.jsp">
                        <div class="view-all-icon">
                            <a href="DiscountProduct"> Xem tất cả > </a>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <c:forEach var="product" items="${productsDis}">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${product.getImageUrl()}">
                            <ul class="featured__item__pic__hover">
                                <c:if test="${product.amount_shop ne 0}">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="AddToCart?id=${product.id}"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a title="${product.name}" href="DetailProduct?id=${product.id}">${product.name}</a>
                            </h6>
                            <h5><fmt:formatNumber value="${product.price}" pattern="#,##0"/><sup>đ</sup>
                                <c:if test="${product.discount ne 0}">
                                <span class="discount">-${product.discount}%</span>
                                </c:if>
                                <c:if test="${product.amount_shop == 0}">
                                <span class="discount">Hết hàng</span>
                                </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <div class="title">
                        <h2 style="user-select: none">Sản phẩm mới</h2>
                    </div>
                    <a href="">
                        <div class="view-all-icon">
                            <a href="NewProduct"> Xem tất cả > </a>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row featured__filter">
            <c:forEach var="product" items="${productsNew}">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${product.getImageUrl()}">
                            <ul class="featured__item__pic__hover">
                                <c:if test="${product.amount_shop ne 0}">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                            <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="AddToCart?id=${product.id}"><i class="fa fa-shopping-cart"></i></a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a title="${product.name}" href="DetailProduct?id=${product.id}">${product.name}</a>
                            </h6>
                            <h5><fmt:formatNumber value="${product.price}" pattern="#,##0"/><sup>đ</sup>
                                <c:if test="${product.discount ne 0}">
                                <span class="discount">-${product.discount}%</span>
                                </c:if>
                                <c:if test="${product.amount_shop == 0}">
                                <span class="discount">Hết hàng</span>
                                </c:if>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <div class="title">
                        <h2 style="user-select: none">Thông tin bổ ích</h2>
                    </div>
                    <a href="index.jsp">
                        <div class="view-all-icon">
                            Xem tất cả >
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="https://concung.com/img/news/2023/2223-1680851555-cover.png" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 21/10/2023</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Review chi tiết top 5 dòng sữa cho trẻ sơ sinh phát triển toàn diện </a></h5>
                        <p>Sữa mẹ là nguồn dinh dưỡng tốt nhất cho trẻ sơ sinh và trẻ nhỏ. Song mẹ có thể cân nhắc kết
                            hợp cho bé dùng sữa mẹ và sữa công thức để đảm bảo cung cấp đầy đủ dinh dưỡng cần thiết cho
                            con</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="https://concung.com/img/news/2023/2222-1680851139-cover.png" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 21/10/2023</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Gợi ý lịch ăn cho bé 1 tuổi khoa học ba mẹ cần biết</a></h5>
                        <p>Ở giai đoạn 1 tuổi, tốc độ phát triển của bé rất nhanh. Bổ sung đầy đủ dinh dưỡng và sắp xếp
                            lịch ăn cho bé 1 tuổi phù hợp là cách ba mẹ có thể giúp con phát triển thể chất tốt
                            nhất.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="https://concung.com/img/news/2023/2216-1680851084-cover.png" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 21/10/2023</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Gợi ý thực đơn cho bé 1 tuổi đầy đủ dưỡng chất cần thiết</a></h5>
                        <p>Từ 1 tuổi, bé phát triển thêm khá nhiều kỹ năng vận động thô, kéo theo nhu cầu dinh dưỡng
                            cũng cần được tăng cao</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script src="js/main.js"></script>
<script src="js/scrollToTop.js"></script>
<script src="js/modalpopup.js"></script>
<script>
    let currentSlide = 0;
    const slides = document.querySelectorAll(".hero__item");
    const interval = 5000; // Change slide every 5 seconds

    // Hàm hiển thị một slide dựa trên chỉ số
    function showSlide(index) {
        slides.forEach((slide, i) => {
            slide.style.display = (i === index) ? "block" : "none";
        });
    }

    // Hàm thay đổi slide với offset (độ dịch chuyển)
    function changeSlide(offset) {
        currentSlide = (currentSlide + offset + slides.length) % slides.length;
        showSlide(currentSlide);
    }

    // Bắt đầu trình chiếu tự động
    function startSlideshow() {
        showSlide(currentSlide); // Hiển thị slide ban đầu
        setInterval(() => changeSlide(1), interval); // Tự động thay đổi slide
    }

    // Lắng nghe sự kiện cho các nút chuyển slide
    document.querySelector(".prev-arrow").addEventListener("click", () => changeSlide(-1));
    document.querySelector(".next-arrow").addEventListener("click", () => changeSlide(1));

    // Bắt đầu trình chiếu
    startSlideshow();

</script>

</body>

</html>