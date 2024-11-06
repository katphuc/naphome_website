<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="java.net.URLDecoder" %>

<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sản phẩm</title>

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
    <style>
        .paginationn a {
            border: #ffacac 1px solid;
            padding: 5px 10px;
            color: white;
            text-decoration: none;
            background-color: #ffacac;
        }
    </style>
</head>

<body>
<%--<%@include file="include/header.jsp" %>--%>
<%--<ul class="breadcrumb">--%>
<%--    <li><a href="">Trang chủ</a></li>--%>
<%--    &lt;%&ndash;    <li><a href="/dung-cu/">  Giỏ hàng</a></li>&ndash;%&gt;--%>
<%--    <li><span>  Cửa hàng</span></li>--%>
<%--</ul>--%>

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
<%--            <div class="col-lg-3 col-md-5">--%>
<%--&lt;%&ndash;                <div class="sidebar">&ndash;%&gt;--%>

<%--&lt;%&ndash;                    <div class="sidebar__item">&ndash;%&gt;--%>

<%--&lt;%&ndash;                        <div class="new-div">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h4>Phân loại sản phẩm</h4>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p>Thương hiệu</p>&ndash;%&gt;--%>

<%--&lt;%&ndash;                            <div class="checkbox-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <c:forEach var="vendor" items="${vendors}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <label style="display: block;">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <input type="checkbox" name="vendorIds" value="${vendor.id}"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                               onchange="filterProducts()">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            ${vendor.name}&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                            <hr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <p>Giá</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="checkbox-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <input type="checkbox" name="supplier" value="supplier1">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Dưới 100,000 <sup>đ</sup>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <input type="checkbox" name="supplier" value="supplier2">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    100,000 <sup>đ</sup> - 1,000,000 <sup>đ</sup>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <label>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <input type="checkbox" name="supplier" value="supplier3">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    Trên 1,000,000 <sup>đ</sup>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </label>&ndash;%&gt;--%>

<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <hr>&ndash;%&gt;--%>

<%--&lt;%&ndash;                        <div class="latest-product__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <h4>Bán chạy</h4>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            <div class="latest-product__slider owl-carousel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <div class="latest-prdouct__slider__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2022/03/56291-85271-large_mobile/sua-growplus-do-1-5kg-tu-1-tuoi.png"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                 alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>575.000<sup>đ</sup> </span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2023/04/48750-trans.png" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                nhiên)</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>335.000<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2023/05/62439-trans.png" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>335.000<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/combo/2023/07/600x600-748-2023-03-59031-trans.png"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                 alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Máy xay đa năng cao cấp Animo 0.3L (SW-MG808)</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>590.000<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                                <div class="latest-prdouct__slider__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2023/02/61719-trans.png" alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Tã quần Nhật Bản Takato siêu mềm mại (L, 68 miếng)</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>325.000<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2020/09/42532-65686-large_mobile/sua-tam-goi-toan-than-johnson-baby-500ml.png"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                 alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Sữa tắm gội toàn thân Johnson Baby 500ml</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>124.000<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2023/10/52365-1696583967-trans.png"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                 alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Sữa Enfagrow A+ số 4 830g (2-6 tuổi) 2Flex</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>485.000<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <a href="#" class="latest-product__item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__pic">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <img src="https://cdn1.concung.com/2021/10/26391-75896-large_mobile/dung-dich-giat-quan-ao-aga-ae-chai-3l.png"&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                 alt="">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        <div class="latest-product__item__text">&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <h6>Nước giặt Hàn quốc AGA - AE kháng khuẩn & bảo vệ da bé - Moonlight&ndash;%&gt;--%>
<%--&lt;%&ndash;                                                3L</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                            <span>193.500<sup>đ</sup></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                            </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--            </div>--%>
            <div class="col-lg-12 col-md-7">

<%--                <div class="filter__item">--%>
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-3 col-md-5">--%>
<%--                            <div class="filter__sort">--%>
<%--                                &lt;%&ndash;                                <span>Bộ lọc</span>&ndash;%&gt;--%>
<%--                                <%--%>

<%--                                    String sortingOption = (String) request.getAttribute("sortingOption");--%>

<%--                                %>--%>
<%--                                <form id="filterForm" action="Filter" method="post">--%>
<%--                                    <select id="sortingOption" name="sortingOption" onchange="submitForm()">--%>
<%--                                        <option value="lowtohigh">Bộ lọc</option>--%>
<%--                                        <option value="lowtohigh"> Giá từ thấp - cao</option>--%>
<%--                                        <option value="hightolow">Giá từ cao - thấp</option>--%>
<%--                                        <option value="atoz">Thứ tự A - Z</option>--%>
<%--                                        <option value="ztoa">Thứ tự Z - A</option>--%>
<%--                                    </select>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>


<%--                    </div>--%>
<%--                </div>--%>

                <div class="row" id="product-list">

                    <c:forEach var="product" items="${products}">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${product.getImageUrl()}">
                                    <ul class="product__item__pic__hover">
                                            <%--                                        <li><a href=""><i class="fa fa-heart"></i></a></li>--%>
                                        <li><a href="AddToCart?id=${product.id}"><i class="fa fa-shopping-cart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a title="${product.name}"
                                           href="DetailProduct?id=${product.id}">${product.name}</a></h6>
<%--                                    <h5><fmt:formatNumber value="${product.price}" pattern="#,##0"/><sup>đ</sup>&ndash;%&gt;--%>
                                        <h5 style="color: red">Liên hệ
                                        <c:if test="${product.discount ne 0}">
<%--                                        <span class="discount">-${product.discount}%</span>--%>
                                        </c:if>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                </div>
<%--                <div class="paginationn">--%>
<%--                    <c:if test="${currentPage > 1}">--%>
<%--                        <a href="?page=${currentPage - 1}">Trang trước</a>--%>
<%--                    </c:if>--%>

<%--                    <c:forEach var="i" begin="1" end="${totalPages}">--%>
<%--                        <c:choose>--%>
<%--                            <c:when test="${i == currentPage}">--%>
<%--                                <a style="color: black"> <b>${i}</b></a>--%>
<%--                            </c:when>--%>
<%--                            <c:otherwise>--%>
<%--                                <a href="?page=${i}">${i}</a>--%>
<%--                            </c:otherwise>--%>
<%--                        </c:choose>--%>
<%--                    </c:forEach>--%>

<%--                    <c:if test="${currentPage < totalPages}">--%>
<%--                        <a href="?page=${currentPage + 1}">Trang tiếp</a>--%>
<%--                    </c:if>--%>
<%--                </div>--%>

            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->
<!-- Nút cuộn lên đầu trang -->
<button id="scrollToTopBtn" class="scroll-to-top"><i class="fa-solid fa-arrow-up"></i></button>
<!-- Footer Section Begin -->
<%--<%@include file="include/footer.jsp" %>--%>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script>
    // Hàm xử lý khi checkbox thay đổi
    function filterProducts() {
        // Lấy danh sách các checkbox đã chọn
        let selectedVendors = [];
        document.querySelectorAll('input[name="vendorIds"]:checked').forEach(checkbox => {
            selectedVendors.push(checkbox.value);
        });

        // Kiểm tra nếu không checkbox nào được chọn thì thêm tất cả vendorId
        if (selectedVendors.length === 0) {
            selectedVendors = Array.from(document.querySelectorAll('input[name="vendorIds"]')).map(checkbox => checkbox.value);
        }

        console.log(selectedVendors.join(',')); // In ra để kiểm tra giá trị

        // Gửi danh sách vendorId qua AJAX
        $.ajax({
            url: '/FilterAdvance',
            method: 'POST',
            data: {
                vendorIds: selectedVendors.join(',')
            },
            success: function(response) {
                $('#product-list').html(response);
            },
            error: function(xhr, status, error) {
                console.error('AJAX Error: ', status, error);
            }
        });
    }

    // Gán sự kiện change cho tất cả các checkbox khi trang tải xong
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('input[name="vendorIds"]').forEach(checkbox => {
            checkbox.addEventListener('change', filterProducts);
        });
    });
</script>

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
<%--<script src="js/scrollToTop.js"></script>--%>
<%--<script>--%>
<%--    function submitForm() {--%>
<%--        var sortingOption = document.getElementById("sortingOption").value;--%>

<%--        // Lưu giá trị hiện tại của option để có thể đặt lại sau khi gửi form--%>
<%--        var selectedOption = document.getElementById("sortingOption").value;--%>

<%--        // Gửi form--%>
<%--        document.getElementById("filterForm").submit();--%>

<%--        // Đặt lại giá trị đã chọn sau khi form được gửi, sau 100ms--%>
<%--        setTimeout(function () {--%>
<%--            document.getElementById("sortingOption").value = selectedOption;--%>
<%--        }, 100);--%>
<%--    }--%>

<%--</script>--%>
</body>
</html>
