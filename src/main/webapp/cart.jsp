<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Ogani Template">
  <meta name="keywords" content="Ogani, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Giỏ hàng</title>

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
  <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>




<!-- Header Section Begin -->
<%@include file="include/header.jsp"%>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<section class="hero hero-normal">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <%@include file="include/menu.jsp"%>
      </div>
      <div class="col-lg-9">
        <%@include file="include/search.jsp"%>
      </div>
    </div>
  </div>
</section>
<!-- Hero Section End -->

<ul class="breadcrumb">
  <li><a href="">Trang chủ</a></li>
<%--  <li><a href="/dung-cu/">  Tin tức</a></li>--%>
  <li><span>  Giỏ hàng</span></li>
</ul>

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__table">
          <table>
            <thead>
            <tr>
              <th class="shoping__product">Sản phẩm</th>
              <th>Giá tiền</th>
              <th>Số lượng</th>
              <th>Tổng tiền</th>
              <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td class="shoping__cart__item">
                <img src="https://cdn1.concung.com/2023/10/64221-1697710018-trans.png" alt="">
                <h5 title="Set 2 body tam giác Animo NB522014 (0-12M,xanh-trắng mũi tên)">Set 2 body tam giác Animo NB522014 (0-12M,xanh-trắng mũi tên)</h5>
              </td>
              <td class="shoping__cart__price">
                149.000<sup>đ</sup>
              </td>
              <td class="shoping__cart__quantity">
                <div class="quantity">
                  <div class="pro-qty">
                    <input type="text" value="2">
                  </div>
                </div>
              </td>
              <td class="shoping__cart__total">
                298.000<sup>đ</sup>
              </td>
              <td class="shoping__cart__item__close">
                <span class="icon_close"></span>
              </td>
            </tr>
            <tr>
              <td class="shoping__cart__item">
                <img src="https://cdn1.concung.com/2023/10/64225-1697709895-trans.png" alt="">
                <h5 title="Set 2 body tam giác Animo NB522013 (0-12M,cam-trắng sọc cam)">Set 2 body tam giác Animo NB522013 (0-12M,cam-trắng sọc cam)</h5>
              </td>
              <td class="shoping__cart__price">
                90.000<sup>đ</sup>
              </td>
              <td class="shoping__cart__quantity">
                <div class="quantity">
                  <div class="pro-qty">
                    <input type="text" value="1">
                  </div>
                </div>
              </td>
              <td class="shoping__cart__total">
                90.000<sup>đ</sup>
              </td>
              <td class="shoping__cart__item__close">
                <span class="icon_close"></span>
              </td>
            </tr>
            <tr>
              <td class="shoping__cart__item">
                <img src="https://cdn1.concung.com/2021/10/51849-75494-large_mobile/ta-quan-merries-ultra-jumbo-l-9-14kg-56-mieng.png" alt="">
                <h5 title="Tã quần Merries Ultra Jumbo (L, 9-14kg, 56 miếng)">Tã quần Merries Ultra Jumbo (L, 9-14kg, 56 miếng)</h5>
              </td>
              <td class="shoping__cart__price">
                120.000<sup>đ</sup>
              </td>
              <td class="shoping__cart__quantity">
                <div class="quantity">
                  <div class="pro-qty">
                    <input type="text" value="2">
                  </div>
                </div>
              </td>
              <td class="shoping__cart__total">
                240.000<sup>đ</sup>
              </td>
              <td class="shoping__cart__item__close">
                <span class="icon_close"></span>
              </td>
            </tr>

            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__btns">
          <a href="#" class="primary-btn cart-btn">Tiếp tục mua hàng</a>
          <a href="#" class="primary-btn cart-btn cart-btn-right"><span ></span>
            Xóa giỏ hàng</a>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="shoping__continue">
          <div class="shoping__discount">
            <h5>Mã ưu đãi</h5>
            <form action="#">
              <input type="text" placeholder="Nhập mã ưu đãi của bạn">
              <button type="submit" class="site-btn">ÁP DỤNG</button>
            </form>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="shoping__checkout">
          <h5>Tổng tiền giỏ hàng</h5>
          <ul>
            <li>Tổng tiền <span>628.000<sup>đ</sup></span></li>
            <li>Tổng tiền phải trả <span>500.000<sup>đ</sup></span></li>
          </ul>
          <a href="checkout.jsp" class="primary-btn">Thanh toán</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shoping Cart Section End -->

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


</body>

</html>