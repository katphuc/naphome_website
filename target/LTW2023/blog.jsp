<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Tin Tức | Ngân Anh Phát</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="css/style.css" type="text/css">
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
  <link rel="stylesheet" href="css/nice-select.css" type="text/css">
  <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
  <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
  <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  <link rel="icon" href="img/favicon.png" type="image/png">

  <style>
    .long-content {
      max-width: 473px;
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
    }

    .long-title {
      width: 364px; /* Điều chỉnh giới hạn kích thước tùy ý */
      overflow: hidden;
      text-overflow: ellipsis;
      white-space: nowrap;
      /*display: inline-block;*/
    }



    .blog__pagination{
      /*padding-left: 496px;*/
    }

  </style>
</head>

<body>
<%@include file="include/header.jsp"%>
<%--<ul class="breadcrumb">--%>
<%--  <li><a href="index.jsp">Trang chủ</a></li>--%>
<%--  <li><span>  Tin tức</span></li>--%>
<%--</ul>--%>

<!-- Blog Section Begin -->
<section style="padding-top: 20px" class="blog spad">
  <div class="container">
    <div class="row">

        <div class="row">
          <c:forEach var="blogs" items="${blogs}">
          <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="blog__item">
              <div class="blog__item__pic">
                <img src="${blogs.img}" alt="">
              </div>
              <div class="blog__item__text">
                <ul>
                  <li><i class="fa fa-calendar-o"></i> ${blogs.formatBlogTime(blogs.time)}</li>
<%--                  <li><i class="fa fa-comment-o"></i> 5</li>--%>
                </ul>
                <h5><a class="long-title" href="DetailBlog?id=${blogs.id}">${blogs.title}</a></h5>
                <p class="long-content">${blogs.meta}</p>
                <a href="DetailBlog?id=${blogs.id}" class="blog__btn">ĐỌC THÊM <span class="arrow_right"></span></a>
              </div>
            </div>
          </div>
          </c:forEach>

          <div class="col-lg-12">
<%--            <div class="product__pagination blog__pagination">--%>
<%--              <a href="#">1</a>--%>
<%--              <a href="#">2</a>--%>
<%--              <a href="#">3</a>--%>
<%--              <a href="#"><i class="fa fa-long-arrow-right"></i></a>--%>
<%--            </div>--%>
          </div>
        </div>

    </div>
  </div>
</section>
<!-- Blog Section End -->
<!-- Nút cuộn lên đầu trang -->
<button id="scrollToTopBtn" class="scroll-to-top"><i class="fa-solid fa-arrow-up"></i></button>
<!-- Footer Section Begin -->
<%@include file="include/footer.jsp"%>
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