<%@ page import="Model.Cart" %>
<%@ page import="Model.CartItem" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>

<!-- Header Section Begin -->
<%@include file="include/header.jsp"%>
<!-- Header Section End -->

<ul class="breadcrumb">
  <li><a href="">Trang chủ</a></li>
  <li><span>Giỏ hàng</span></li>
</ul>

<%
  // Kiểm tra giỏ hàng
  Cart cart = (Cart) session.getAttribute("cart");
  if (cart != null && !cart.getItems().isEmpty()) {
    List<CartItem> items = cart.getItems();
    double grandTotal = 0;
%>
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
            <%
              Locale locale = new Locale("vi", "VN");
              NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(locale);
              for (CartItem item : items) {
                Product product = item.getProduct();
                int quantity = item.getQuantity();
                double price = product.getPrice();
                double total = quantity * price;
                grandTotal += total;
            %>
            <tr>
              <td class="shoping__cart__item">
                <img src="<%= product.getImageUrl() %>" alt="">
                <h5 title="<%= product.getName() %>"><%= product != null ? product.getName() : "Unknown" %></h5>
              </td>
              <td class="shoping__cart__price">
                <%= currencyFormatter.format(price) %>
              </td>
              <td class="shoping__cart__quantity">
                <div class="quantity">
                  <div class="pro-qty">
                    <a href="UpdateCart?num=-1&id=<%= product.getId() %>"><span class="dec qtybtn">-</span></a>
                    <input type="text" value="<%= quantity %> ">
                    <a href="UpdateCart?num=1&id=<%= product.getId() %>"><span class="inc qtybtn">+</span></a>
                  </div>
                </div>
              </td>
              <td class="shoping__cart__total">
                <%= currencyFormatter.format(total) %>
              </td>
              <td class="shoping__cart__item__close">
                <a href="RemoveItemCart?id=<%= product.getId() %>"><span class="icon_close"></span></a>
              </td>
            </tr>
            <%
              }
            %>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-12">
        <div class="shoping__cart__btns">
          <a href="Product" class="primary-btn cart-btn">Tiếp tục mua hàng</a>
          <a href="RemoveAllCart" class="primary-btn cart-btn cart-btn-right">Xóa giỏ hàng</a>
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
            <li>Tổng tiền <span><%= currencyFormatter.format(grandTotal) %></span></li>
            <li>Tổng tiền phải trả <span><%= currencyFormatter.format(grandTotal) %></span></li>
          </ul>
<%--          <a href="ShoppingCart" class="primary-btn">Thanh toán</a>--%>
          <a href="ContactCPN" style="color: white; cursor: pointer" class="primary-btn">Liên hệ</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Shoping Cart Section End -->

<%
} else {
%>
<p style="height: 500px; padding-left: 109px">Giỏ hàng của bạn hiện chưa có sản phẩm</p>
<%
  }
%>

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
<script src="js/modalpopup.js"></script>

<%--<script src="js/main.js"></script>--%>

</body>
</html>
