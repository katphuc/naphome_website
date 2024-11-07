<%@ page import="Model.Cart" %>
<%@ page import="Model.TypeProduct" %>
<%@ page import="java.util.List" %>
<%@ page import="Dao.ProductDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    .product-item {
        display: flex; /* Sử dụng Flexbox cho li */
        align-items: center; /* Căn giữa theo chiều dọc */
        justify-content: space-between; /* Đảm bảo khoảng cách đều giữa tên sản phẩm và dấu mũi tên */
        padding: 10px; /* Thêm khoảng đệm cho li */
        list-style: none; /* Bỏ kiểu danh sách nếu cần */
        position: relative; /* Để định vị thẻ div bên trong li */
    }

    .product-link {
        text-decoration: none; /* Bỏ gạch dưới cho liên kết */
        flex-grow: 1; /* Chiếm toàn bộ chiều rộng còn lại */
    }

    .product-item i {
        margin-left: 10px; /* Khoảng cách giữa tên sản phẩm và dấu mũi tên */
    }

    .hover-info {

        display: none; /* Ẩn thẻ div mặc định */
        position: absolute; /* Định vị thẻ div bên trong li */
        left: 100%; /* Đặt nó kế bên bên phải thẻ li */
        top: 0px; /* Căn giữa theo chiều dọc */
        /*transform: translateY(-50%); !* Giúp căn giữa theo chiều dọc *!*/
        background-color: #A9A9A9; /* Màu nền cho thẻ div */
        border: 1px solid #ccc; /* Đường viền */
        padding: 0px; /* Khoảng đệm */
        z-index: 1; /* Đảm bảo thẻ div hiển thị trên các phần tử khác */
        white-space: nowrap; /* Ngăn dòng xuống */
        width: 80%;
    }

    .product-item:hover .hover-info {
        display: block; /* Hiển thị thẻ div khi hover vào li */
    }

    .hover-info ul li {
        height: 59px;
    }
</style>
<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-1" style="padding-top: 10px">
                    <div class="header__logo">
                        <a href="Home"><img src="img/logo_nap.png" alt="Logo"></a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="Home">Trang chủ<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="About">Giới thiệu<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="Product">Cửa hàng<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="Blog">Tin tức<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="contact.jsp">Liên hệ<i class="fa-solid fa-angle-down"></i></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-1" style="padding:0px; ">
                    <div class="header__top__right__auth">
                        <% if (session.getAttribute("name") == null) { %>
                        <a style="margin-top: 12px" href="javascript:void(0)" id="openLoginModal"><i
                                class="fa-regular fa-circle-user"></i>Tài khoản</a>
                        <% } else { %>
                        <a style="margin-top: 12px" href="UserInfo"><i
                                class="fa fa-user"></i> <%= session.getAttribute("name") %>
                        </a>
                        <% } %>
                    </div>


                </div>
                <div style="padding-top: 14px" class="col-lg-1">
                    <div style="padding: 0" class="header__top__right__language">
                        <% if (session.getAttribute("name") == null) { %>
                        <% } else { %>
                        <div class="header__top__right__auth">
                            <a href="LogoutServlet">Đăng xuất</a>
                        </div>
                        <% } %>
                        <%--                        <img src="img/language_vietnam.png" alt="" style="width: 100px; height: auto;">--%>
                        <%--                        <img src="img/language.png" alt="" style="width: 100px; height: auto;">--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header__bottom">
        <div class="container">
            <div class="row">
                <div class="col-lg-3" style="padding-top: 14px">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span id="category">Danh mục sản phẩm</span>
                        </div>
                        <ul>
                            <%
                                List<TypeProduct> typeProducts = (List<TypeProduct>) session.getAttribute("typeProducts");
                                for (TypeProduct typeproduct : typeProducts) {
                            %>
                            <li class="product-item">
                                <a href="ProductByCategory?categoryId=<%= typeproduct.getId() %>" class="product-link">
                                    <%= typeproduct.getName() %>
                                </a>

                                <%
                                    if (typeproduct.getParent_id() == 0) {
                                %>
                                <i class="fa-solid fa-caret-right"></i>
                                <%
                                    }

                                    List<TypeProduct> products = ProductDao.getChildCategory(typeproduct.getId()); // Thay đổi ID cho đúng
                                    boolean hasProducts = (products != null && !products.isEmpty()); // Kiểm tra xem có sản phẩm hay không
                                %>

                                <div class="hover-info" <% if (!hasProducts) { %> style="display: none;" <% } %>>
                                    <ul style="border: none;">
                                        <%
                                            if (hasProducts) {
                                                for (TypeProduct product : products) {
                                        %>
                                        <li>
                                            <a href="ProductByCategory?categoryId=<%= product.getId() %>"><%= product.getName() %></a>
                                        </li>
                                        <%
                                            }
                                        } else {
                                        %>
                                        <li>Không có sản phẩm nào.</li>
                                        <%
                                            }
                                        %>
                                    </ul>
                                </div>
                            </li>
                            <%
                                }
                            %>
                        </ul>


                    </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search d-flex align-items-center justify-content-between">
                    <div class="hero__search__form flex-grow-1">
                        <form action="Search" method="post">
                            <input type="text" placeholder="Hãy nhập sản phẩm bạn cần tìm tại đây..."
                                   name="searchTerm">
                            <button type="submit">
                                <i class="fa-solid fa-magnifying-glass"></i>Tìm kiếm
                            </button>
                        </form>
                    </div>
                    <div class="header__cart mx-3">
                        <ul>
                            <%
                                if (request.getSession().getAttribute("cart") == null) {
                                    request.getSession().setAttribute("cart", new Cart());
                                }
                            %>
                            <li>
                                <a href="CartShow">
                                    <i class="fa-solid fa-cart-shopping"></i>
                                    <span>${sessionScope.cart.getTotalQuantity()}</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="hero__search__phone d-flex align-items-center">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h6><b>(+84)2513.857.563</b></h6>
                            <span>Liên hệ ngay</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</header>
<%
    String loginError = (String) session.getAttribute("loginError");
    if (loginError != null) {
%>
<script>
    // set time để tránh trường hợp bị trắng trang
    setTimeout(function () {
        alert("<%= loginError %>");
    }, 100);
</script>
<%
        session.removeAttribute("loginError"); // Xóa thông báo lỗi khỏi session sau khi hiển thị
    }
%>
<%
    String verifySuccess = (String) session.getAttribute("message");
    if (verifySuccess != null) {
%>
<script>
    // set time để tránh trường hợp bị trắng trang
    setTimeout(function () {
        alert("<%= verifySuccess %>");
    }, 100);
</script>
<%
        session.removeAttribute("message"); // Xóa thông báo lỗi khỏi session sau khi hiển thị
    }
%>

<!-- Header Section End -->
<!-- Modal Đăng nhập -->
<div id="loginModal" class="modal">
    <div class="modal-content">
        <span class="close" id="closeLogin">&times;</span>
        <h2 style="color: black; font-weight: bold; text-align: center">Đăng nhập</h2>
        <form id="loginForm" action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Tên đăng nhập:</label>
                <input type="text" id="username" name="username" placeholder="Tên đăng nhập" required>
            </div>

            <div class="form-group">
                <label for="password">Mật khẩu:</label>
                <input type="password" id="password" name="password" placeholder="Mật khẩu" required>
            </div>

            <%--            <p id="loginError" style="color: red; display: none;"></p>--%>

            <!-- Dòng chứa nút đăng nhập, đã căn giữa -->
            <div class="form-group button-container" style="align-items: center">
                <button type="submit" class="login-button">Đăng nhập</button>
            </div>
        </form>

        <%--        <script>--%>
        <%--            // Kiểm tra nếu có lỗi đăng nhập từ session--%>
        <%--            const loginError = "<%= session.getAttribute("loginError") %>";--%>
        <%--            if (loginError) {--%>
        <%--                // Hiển thị thông báo lỗi trong modal và mở modal--%>
        <%--                document.getElementById("loginError").innerText = loginError;--%>
        <%--                document.getElementById("loginError").style.display = "block";--%>
        <%--                document.getElementById("loginModal").style.display = "flex";--%>
        <%--                // Xóa thông báo lỗi khỏi session--%>
        <%--                <% session.removeAttribute("loginError"); %>--%>
        <%--            }--%>
        <%--        </script>--%>
        <!-- Nút chuyển đổi sang đăng ký -->
        <div class="form-group button-container">
            <button id="switchToRegister" class="register-switch">Chưa có tài khoản? Đăng ký ngay</button>
        </div>
    </div>
</div>

<!-- Modal Đăng ký -->
<div id="registerModal" class="modal">
    <div class="modal-content register-modal-content">
        <span class="close" id="closeRegister">&times;</span>
        <h2 style="color: black; font-weight: bold; text-align: center">Đăng ký</h2>
        <form id="registerForm" action="RegisterServlet" method="post">
            <div class="register-form-group">
                <label for="newUsername">Tên tài khoản:</label>
                <input type="text" id="newName" name="name" placeholder="Tên tài koản" required>
            </div>
            <div class="register-form-group">
                <label for="newUsername">Tên đăng nhập:</label>
                <input type="text" id="newUsername" name="username" placeholder="Tên đăng nhập" required>
            </div>
            <div class="register-form-group">
                <label for="newPassword">Mật khẩu:</label>
                <input type="password" id="newPassword" name="password" placeholder="Mật khẩu" required>
            </div>
            <div class="register-form-group">
                <label for="newPassword">Nhập lại mật khẩu:</label>
                <input type="password" id="rePassword" name="confirmPassword" placeholder="Nhập lại mật khẩu" required>
            </div>
            <div class="register-form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Email" required>
            </div>
            <!-- Dòng chứa nút đăng ký -->
            <div class="register-button-container">
                <button type="submit" class="register-button">Đăng ký</button>
            </div>
        </form>

        <!-- Nút chuyển đổi sang đăng nhập -->
        <div class="register-button-container">
            <button id="switchToLogin" class="register-login-switch">Đã có tài khoản? Đăng nhập ngay</button>
        </div>
    </div>
</div>

