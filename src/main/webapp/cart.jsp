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
    <style>
      /* CSS cho Popup */
      #contactModal {
        display: none; /* Ẩn popup ban đầu */
        position: fixed; /* Vị trí cố định */
        z-index: 1000; /* Để nằm trên tất cả các phần tử khác */
        left: 0;
        top: 0;
        width: 100%; /* Chiều rộng đầy đủ */
        height: 100%; /* Chiều cao đầy đủ */
        overflow: auto; /* Cho phép cuộn nếu cần */
        background-color: rgba(0, 0, 0, 0.6); /* Màu nền trong suốt */
      }

      .modal-content {
        background-color: #fff; /* Màu nền trắng cho nội dung */
        margin: 10% auto; /* Vị trí giữa */
        padding: 30px;
        border-radius: 10px; /* Bo góc cho modal */
        box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2); /* Đổ bóng */
        width: 400px; /* Chiều rộng của modal */
        transition: all 0.3s ease; /* Hiệu ứng chuyển động */
      }

      .modal-content .close {
        font-size: 24px; /* Kích thước biểu tượng đóng */
        color: #888; /* Màu sắc biểu tượng đóng */
        float: right; /* Canh phải */
        cursor: pointer; /* Hiển thị con trỏ khi hover */
      }

      .modal-content .close:hover {
        color: #ff0000; /* Màu sắc khi hover */
      }

      .modal-content .title {
        margin-bottom: 20px; /* Khoảng cách dưới tiêu đề */
        font-size: 26px; /* Kích thước chữ cho tiêu đề */
        color: #333; /* Màu sắc chữ */
        text-align: center; /* Canh giữa tiêu đề */
      }

      .modal-content .form-label {
        font-size: 16px; /* Kích thước chữ cho nhãn */
        color: #555; /* Màu sắc chữ cho nhãn */
        display: block; /* Hiển thị theo dạng khối */
        margin-bottom: 5px; /* Khoảng cách dưới nhãn */
      }

      .modal-content input[type="email"],
      .modal-content input[type="tel"] {
        width: calc(100% - 20px); /* Chiều rộng đầy đủ */
        padding: 10px; /* Khoảng cách bên trong */
        margin-bottom: 20px; /* Khoảng cách dưới input */
        border: 1px solid #ccc; /* Đường viền cho input */
        border-radius: 5px; /* Bo góc cho input */
        font-size: 14px; /* Kích thước chữ cho input */
        transition: border-color 0.3s; /* Hiệu ứng khi thay đổi đường viền */
      }

      .modal-content input[type="email"]:focus,
      .modal-content input[type="tel"]:focus {
        border-color: #007bff; /* Màu đường viền khi focus */
        outline: none; /* Bỏ đường viền khi focus */
      }

      .modal-content button {
        background-color: #007bff; /* Màu nền cho nút */
        color: #fff; /* Màu chữ cho nút */
        padding: 10px 20px; /* Khoảng cách bên trong cho nút */
        border: none; /* Bỏ đường viền */
        border-radius: 5px; /* Bo góc cho nút */
        cursor: pointer; /* Hiển thị con trỏ khi hover */
        width: 100%; /* Chiều rộng đầy đủ */
        font-size: 16px; /* Kích thước chữ cho nút */
        transition: background-color 0.3s; /* Hiệu ứng khi hover */
      }

      .modal-content button:hover {
        background-color: #0056b3; /* Màu nền khi hover */
      }

    </style>
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
                <th style="display: none">Giá tiền</th>
                <th>Số lượng</th>
                <th  style="display: none">Tổng tiền</th>
                <th></th>
              </tr>
              </thead>
              <tbody>
              <form id="contactForm" action="ContactCPN" method="post">
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

                <input type="hidden" name="productName" value="<%= product.getName() %>">
                <input type="hidden" name="quantity" value="<%= quantity %>">
                <input type="hidden" name="imageUrl" value="<%= product.getImageUrl() %>">

                <td class="shoping__cart__item">
                  <img src="<%= product.getImageUrl() %>" alt="">
                  <h5 title="<%= product.getName() %>"><%= product != null ? product.getName() : "Unknown" %></h5>
                </td>
                <td style="display: none" class="shoping__cart__price">
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
                <td style="display: none" class="shoping__cart__total">
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
<%--              <h5>Mã ưu đãi</h5>--%>
<%--              <form action="#">--%>
<%--                <input type="text" placeholder="Nhập mã ưu đãi của bạn">--%>
<%--                <button type="submit" class="site-btn">ÁP DỤNG</button>--%>
<%--              </form>--%>
            </div>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="shoping__checkout">
            <h5>Tổng tiền giỏ hàng</h5>
            <ul>
<%--              <li>Tổng tiền <span><%= currencyFormatter.format(grandTotal) %></span></li>--%>
<%--              <li>Tổng tiền phải trả <span><%= currencyFormatter.format(grandTotal) %></span></li>--%>
  <li>Tổng tiền <span style="color: red">Liên hệ</span></li>
  <li>Tổng tiền phải trả <span style="color: red">Liên hệ</span></li>
            </ul>
  <%--          <a href="ShoppingCart" class="primary-btn">Thanh toán</a>--%>
            <a id="contactBtn" href="#" style="color: white; cursor: pointer;" class="primary-btn">Liên hệ</a>






              </form>
          </div>
        </div>
      </div>
    </div>

  </section>
  <!-- Shoping Cart Section End -->

  <!-- Popup cho liên hệ -->
  <div id="contactModal">
    <div class="modal-content">
      <span class="close" id="closeModal" style="cursor:pointer;">&times;</span>
      <div style="margin-left: 0; font-size: 21px" class="title">Gửi thông tin liên lạc cho chúng tôi</div>
      <form id="popupContactForm" action="ContactCPN" method="post">
        <label class="form-label" for="email">Email:</label>
        <input type="email" name="email" id="email" required>
        <label class="form-label" for="phone">Số điện thoại:</label>
        <input type="tel" name="phone" id="phone" required>

        <%-- Gửi danh sách sản phẩm qua biểu mẫu --%>
        <%
          for (CartItem item : items) {
            Product product = item.getProduct();
            int quantity = item.getQuantity();
        %>
        <input type="hidden" name="productName" value="<%= product.getName() %>">
        <input type="hidden" name="quantity" value="<%= quantity %>">
        <input type="hidden" name="imageUrl" value="<%= product.getImageUrl() %>">
        <%
          }
        %>

        <button type="submit">Hoàn tất</button>
      </form>
    </div>
  </div>

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
  <script>
    // Hiện popup khi nhấn vào nút "Liên hệ"
    document.getElementById('contactBtn').onclick = function() {
      document.getElementById('contactModal').style.display = 'block';
    }

    // Đóng popup khi nhấn vào dấu 'x'
    document.getElementById('closeModal').onclick = function() {
      document.getElementById('contactModal').style.display = 'none';
    }

    // Đóng popup nếu nhấn ra ngoài popup
    window.onclick = function(event) {
      const modal = document.getElementById('contactModal');
      if (event.target === modal) {
        modal.style.display = 'none';
      }
    }
  </script>


  <%--<script src="js/main.js"></script>--%>

  </body>
  </html>
