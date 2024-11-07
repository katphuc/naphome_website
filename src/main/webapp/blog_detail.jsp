<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tin tức</title>

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
    <link rel="stylesheet" href="css/blog.css" type="text/css">
    <link rel="icon" href="img/favicon.png" type="image/png">
    <style>
        p.blog-text {
            color: black;
        }

        /*h1,h2 {*/
        /*    color: black;*/

        /*}*/

        .editor h1 {
            font-size: 30px;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .editor h2 {
            font-size: 25px;
            margin-bottom: 10px;
            font-weight: 700;
        }

        .editor li {
            margin-left: 30px;
            font-family: Arial, sans-serif;
        }
        .editor a:hover {
           color: #007bff;
        }
        .editor a:visited {
            color: #007bff;
        }

        .editor p {
            color: black;
        }



        p.time-blog {
            font-size: 17px;
            line-height: 30px;
            padding-top: 20px;
        }

    </style>
</head>

<body>


<!-- Header Section Begin -->
<%@include file="include/header.jsp" %>
<!-- Header Section End -->
<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container-fluid" style="padding: 50px 218px">
        <div class="row">
            <div class="col-lg-2 col-md-5 order-md-1 order-3">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__item">
                        <h4>Tin mới</h4>
                        <div class="blog__sidebar__recent">
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="https://www.ngananhphat.com/vnt_upload/news/11_2024/ro_le_trang_thai_ran_phan_loai_va_loi_ich.png" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6 title="Rơ le trạng thái rắn, phân loại và lợi ích">
                                        Rơ le trạng thái rắn, phân loại và lợi ích</h6>
                                    <span>26/10/2023</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="https://www.ngananhphat.com/vnt_upload/news/11_2024/ro_le_dien_la_gi_cau_tao_ung_dung_va_cach_hoat_dong.png" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6 title=" Rơ le điện là gì? Cấu tạo, ứng dụng và nguyên lý">
                                        Rơ le điện là gì? Cấu tạo, ứng dụng và nguyên lý</h6>
                                    <span>26/10/2023</span>
                                </div>
                            </a>
                            <a href="#" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="https://www.ngananhphat.com/vnt_upload/news/11_2024/ro_le_nhiet_cau_tao_chuc_nang_va_ung_dung.png" alt="">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h6 title="Rơ le nhiệt, cấu tạo chức năng và ứng dụng">Rơ le nhiệt, cấu tạo chức năng và ứng dụng</h6>
                                    <span>26/10/2023</span>
                                </div>
                            </a>
                        </div>
                    </div>
<%--                    <div class="blog__sidebar__item">--%>
<%--                        <h4>Tìm kiếm nổi bật</h4>--%>
<%--                        <div class="blog__sidebar__item__tags">--%>
<%--                            <a href="#">Thước Panme</a>--%>
<%--                            <a href="#">Thước kẹp</a>--%>
<%--                            <a href="#">Rơ le</a>--%>
<%--                            <a href="#">Cảm biến lực</a>--%>
<%--                            <a href="#">Cảm biến lưu lượng</a>--%>
<%--                            <a href="#">Đồng hồ so</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
            <div class="col-lg-6 col-md-7 order-md-1 order-2">
                <c:forEach var="blogs" items="${blogs}">
                    <div class="blog__details__text">
                        <h1 style="font-size: 30px;
    margin-bottom: 30px;color: black; font-weight: bold;">${blogs.title}</h1>
                        <div class="editor" style="color: black">${blogs.content}</div>

                    </div>

                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="https://i.pinimg.com/236x/05/9a/6f/059a6f3e7a59ba3d2370a9a39b961982.jpg"
                                             alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <h6>Thiên Phúc</h6>
                                        <span>Content Writer</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <ul>
                                        <li><span>Chủ đề:</span> Cảm biến</li>
                                    </ul>
                                    <div class="blog__details__social">
                                        <a href="#"><i class="fa fa-envelope"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

            </div>

            <div class="col-lg-4 col-md-5 order-md-1 order-1">
                <div class="row">
<%--                    <div class="col-md-5">--%>
<%--&lt;%&ndash;                        <p class="time-blog">28/11/2024</p>&ndash;%&gt;--%>
<%--                    </div>--%>
                    <div class="col-md-5">
                        <p class="time-blog">${blogs.formatBlogTime(blogs.time)}</p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Blog Details Section End -->

<!-- Related Blog Section Begin -->
<section class="related-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related-blog-title">
                    <h2>Tin liên quan</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="https://www.ngananhphat.com/vnt_upload/news/11_2024/ro_le_nhiet_cau_tao_chuc_nang_va_ung_dung.png" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 26/10/2023</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a title="Rơ le nhiệt, cấu tạo chức năng và ứng dụng"
                               href="">Rơ le nhiệt, cấu tạo chức năng và ứng dụng</a></h5>
                        <p>Rơ le nhiệt, cấu tạo chức năng và ứng dụng</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="https://www.ngananhphat.com/vnt_upload/news/11_2024/ro_le_dien_la_gi_cau_tao_ung_dung_va_cach_hoat_dong.png" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 26/10/2023</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Rơ le điện là gì? Cấu tạo, ứng dụng và nguyên lý hoạt động</a></h5>
                        <p>Rơ le điện là gì? Cấu tạo, ứng dụng và nguyên lý hoạt động </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="https://www.ngananhphat.com/vnt_upload/news/11_2024/ro_le_trang_thai_ran_phan_loai_va_loi_ich.png" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 26/10/2023</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">Rơ le trạng thái rắn, phân loại và lợi ích</a></h5>
                        <p>Rơ le trạng thái rắn, phân loại và lợi ích</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Blog Section End -->
<section class="comment-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related-blog-title">
                    <h2>Bình luận về bài viết</h2>
                </div>
            </div>
        </div>
        <form action="#">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <textarea placeholder="Bình luận của bạn" style="width: 100%; height: 150%"></textarea>
                    <button type="submit" class="site-btn">Đăng bình luận</button>
                </div>
            </div>
        </form>
    </div>
</section>
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