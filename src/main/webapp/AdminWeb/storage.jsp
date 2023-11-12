<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý kho</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .icon-wrapper {
            margin-top: 2px;
            background-color: #ffacac;
            display: inline-block;
            margin-right: 10px;
            padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
            border-radius: 50%; /* Để tạo biểu tượng hình tròn */
        }

        .icon-wrapper i {
            color: #ffffff; /* Màu trắng cho biểu tượng */
        }
    </style>
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Danh Sách Sản Phẩm</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="row element-button">
                        <div class="col-sm-2">
                            <a class="btn btn-add btn-sm" href="addProduct.jsp" title="Thêm">
                                <i class="fas fa-plus"></i>
                                Nhập hàng mới</a>
                        </div>

                    </div>
                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã</th>
                            <th scope="col">Tên sản phẩm</th>
                            <%--                            <th scope="col">Khối lượng</th>--%>
                            <th scope="col">Ảnh</th>
                            <th scope="col">Số lượng</th>
                            <th scope="col">Tình trạng</th>
                            <th scope="col">Giá tiền</th>
                            <th scope="col">Giảm giá</th>
                            <th scope="col">Danh mục</th>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">100</th>
                            <td>Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu nhiên)</td>
                            <%--                            <td>300G</td>--%>
                            <td><img src="https://cdn1.concung.com/2023/04/48750-trans.png" style="max-width: 100px; max-height: 100px;"></td>
                            <td>40</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>250.000<sup>đ</sup></td>
                            <td>0<span>%</span></td>
                            <td>Bỉm tả khuyến mãi</td>
                            <td>
                                <a title="Xóa tài khoản" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Thêm số lượng" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-plus"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>

                            </td>
                        </tr>
                        <tr>
                            <th scope="row">101</th>
                            <td>Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)</td>
                            <%--                            <td>300G</td>--%>
                            <td><img src="https://cdn1.concung.com/2023/05/62439-trans.png" style="max-width: 100px; max-height: 100px;"></td>
                            <td>40</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>300.000<sup>đ</sup></td>
                            <td>0<span>%</span></td>
                            <td>Bỉm tả khuyến mãi</td>
                            <td>
                                <a title="Xóa tài khoản" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Thêm số lượng" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-plus"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>

                            </td>
                        </tr>
                        <tr>
                            <th scope="row">103</th>
                            <td>Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)</td>
                            <%--                            <td>300G</td>--%>
                            <td><img src="https://cdn1.concung.com/2022/03/56291-85271-large_mobile/sua-growplus-do-1-5kg-tu-1-tuoi.png" style="max-width: 100px; max-height: 100px;"></td>
                            <td>40</td>
                            <td><span class="badge bg-success">Còn hàng</span></td>
                            <td>575.000<sup>đ</sup></td>
                            <td>0<span>%</span></td>
                            <td>Sữa tươi cao cấp</td>
                            <td>
                                <a title="Xóa tài khoản" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Chỉnh sửa" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-pen"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                                <a title="Thêm số lượng" href="#" class="icon-link">
                                    <i class="icon-wrapper">
                                        <i class="fas fa-plus"></i> <!-- Biểu tượng thùng rác -->
                                    </i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf8" src="js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>
</body>
</html>
