<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="view-box">
            <div class="header-box">
                <div class="title">Thống kê</div>
                <div>
                    <select>
                        <option value="0">Hôm nay</option>
                        <option value="1">Tuần</option>
                        <option value="2">Tháng</option>
                    </select>
                </div>
            </div>
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Tổng Đơn Hàng</div>
                        <div class="number">800 đơn hàng</div>
                    </div>
                    <i class="fa-solid fa-cart-plus cart"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Hết Hàng</div>
                        <div class="number">4 sản phẩm</div>
                    </div>
                    <i class="fa-solid fa-xmark cart two"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Doanh Thu</div>
                        <div class="number">5.000.000<sup>đ</sup></div>
                    </div>
                    <i class="fa-solid fa-dollar-sign cart three"></i>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Đơn Hàng Hủy</div>
                        <div class="number">5 đơn hàng</div>
                    </div>
                    <i class="fa-solid fa-scroll cart four"></i>
                </div>
            </div>
        </div>
        <div class="sales-boxes">
            <div class="recent-sales box">
                <div class="title">Đơn Hàng Gần Đây</div>
                <div class="sales-details">
                    <table class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã đơn hàng</th>
                            <th scope="col">Tên khách hàng</th>
                            <th scope="col">Ngày đặt</th>
                            <th scope="col">Số điện thoại</th>
                            <th scope="col">Tổng tiền</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">000001</th>
                            <td>Ka Ân Thiên Phúc</td>
                            <td>27/10/2023</td>
                            <td>0786191721</td>
                            <td>10.000.000<sup>đ</sup></td>
                        </tr>
                        <tr>
                            <th scope="row">000002</th>
                            <td>Nguyễn Đình Lưu</td>
                            <td>27/10/2023</td>
                            <td>0786191721</td>
                            <td>10.000.000<sup>đ</sup></td>
                        </tr>
                        <tr>
                            <th scope="row">000003</th>
                            <td>Trần Hữu Nhật Nam</td>
                            <td>27/10/2023</td>
                            <td>0786191721</td>
                            <td>10.000.000<sup>đ</sup></td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <div class="button">
                    <a href="checkout.jsp">Xem tất cả</a>
                </div>
            </div>
            <div class="top-sales box">
                <div class="title">Sản Phẩm Bán Chạy</div>
                <ul class="top-sales-details">
                    <li>
                        <a href="#">

                            <span title="Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)" class="product">Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)</span>
                        </a>
                        <span class="price">575.000<sup>đ</sup></span>
                    </li>
                    <li>
                        <a href="#">

                            <span title="Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu nhiên)" class="product">Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu nhiên)</span>
                        </a>
                        <span class="price">335.000<sup>đ</sup></span>
                    </li>
                    <li>
                        <a href="#">

                            <span title="Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)" class="product">Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)</span>
                        </a>
                        <span class="price">300.000<sup>đ</sup></span>
                    </li>
                    <li>
                        <a href="#">

                            <span title="Máy xay đa năng cao cấp Animo 0.3L (SW-MG808)" class="product">Máy xay đa năng cao cấp Animo 0.3L (SW-MG808)</span>
                        </a>
                        <span class="price">590.000<sup>đ</sup></span>
                    </li>
                    <li>
                        <a href="#">

                            <span title="Tã quần Nhật Bản Takato siêu mềm mại (L, 68 miếng)" class="product">Tã quần Nhật Bản Takato siêu mềm mại (L, 68 miếng)</span>
                        </a>
                        <span class="price">325.000<sup>đ</sup></span>
                    </li>
                    <li>
                        <a href="#">

                            <span title="Túi 3 xe trớn  phương tiện giao thông ngộ nghĩnh Animo JS054502G" class="product">Túi 3 xe trớn  phương tiện giao thông ngộ nghĩnh Animo JS054502G</span>
                        </a>
                        <span class="price">280.000<sup>đ</sup></span>
                    <li>
                        <a href="#">

                            <span title="Bộ nhập vai máy nướng bánh mì CY294239" class="product">Bộ nhập vai máy nướng bánh mì CY294239</span>
                        </a>
                        <span class="price">150.000<sup>đ</sup></span>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
</body>
</html>
