<%@ page import="Model.Cart" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
                            <li><a href="introduce.jsp">Giới thiệu<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="Product">Cửa hàng<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="blog.jsp">Tin tức<i class="fa-solid fa-angle-down"></i></a></li>
                            <li><a href="contact.jsp">Liên hệ<i class="fa-solid fa-angle-down"></i></a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-1" style="padding:0px">
                    <div class="header__top__right__auth">
                        <% if (session.getAttribute("name") == null) { %>
                        <a href="login.jsp"><i class="fa-regular fa-circle-user"></i>Đăng nhập/<br>Đăng ký</a>
                        <% } else { %>
                        <a href="UserInfo"><i class="fa fa-user"></i> <%= session.getAttribute("name") %>
                        </a>
                        <div class="header__top__right__auth">
                            <a href="LogoutServlet"><i class="fa fa-user"></i> Đăng xuất</a>
                        </div>
                        <% } %>
                    </div>

                </div>
                <div class="col-lg-1">
                    <div class="header__top__right__language">
                        <img src="img/language_vietnam.png" alt="" style="width: 100px; height: auto;">
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
                            <c:forEach var="typeproduct" items="${typeproduct}">
                                <li>
                                    <a href="ProductByCategory?categoryId=${typeproduct.id}">${typeproduct.name}</a>
                                </li>
                            </c:forEach>
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
                                <h5>0963604877</h5>
                                <span>Hỗ trợ 24/7</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Header Section End -->
