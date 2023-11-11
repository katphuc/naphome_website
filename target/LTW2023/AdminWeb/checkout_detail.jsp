<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết đơn hàng</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/checkout.css">
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
        <div class="manager-checkout">
            <div class="title">Quản Lý Đơn Hàng</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="tab row element-button">
                        <button class="tablinks col-sm-2" id="defaultOpen" onclick="openCity(event, 'tab1')">Chi tiết đơn hàng
                        </button>

                    </div>
                    <div id="tab1" class="tabcontent">
                        <p><span style="font-weight: bold">Tên người nhận: </span> Ka Ân Thiên Phúc</p>
                        <p><span style="font-weight: bold">Số điện thoại: </span> 078 6191 721</p>
                        <p><span style="font-weight: bold">Ngày đặt hàng: </span> 27/10/2023</p>
                        <p><span style="font-weight: bold">Địa chỉ: </span> Đại học Nông Lâm TP.HCM</p>
                        <p><span style="font-weight: bold">Ghi chú: </span> Giao ở khoa CNTT</p>
                        <div class="card">
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">Sản phẩm</th>
                                        <th scope="col">Giá tiền</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Thành tiền</th>


                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <th style="font-weight: normal"  scope="row">Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu nhiên)</th>
                                        <td><a>100.000<sup>đ</sup></a></td>
                                        <td><a>2</a></td>
                                        <td>200.000<sup>đ</sup></td>


                                    </tr>
                                    <tr>
                                        <th style="font-weight: normal" scope="row">Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)</th>
                                        <td><a>500.000<sup>đ</sup></a></td>
                                        <td><a>1</a></td>
                                        <td>500.000<sup>đ</sup></td>


                                    </tr>
                                    <tr>
                                        <th style="font-weight: normal" scope="row">Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)</th>
                                        <td><a>200.000<sup>đ</sup></a></td>
                                        <td><a>1</a></td>
                                        <td>200.000<sup>đ</sup></td>


                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <p style="margin-left: 835px; color: red"><span style="font-weight: bold">Phí giao hàng: </span> 0<sup>đ</sup> </p>
                        <p style="margin-left: 835px; color: red"><span style="font-weight: bold">Tổng tiền: </span> 900.000<sup>đ</sup> </p>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>


<script src="js/jquery.min.js"></script>
<script src="js/jquery.dataTables.js"></script>
<script type="text/javascript" charset="utf8" src="js/bootstrap.bundle.min.js"></script>
<script src="js/main.js"></script>
<script>

    // $("#table-id-1").DataTable();

</script>

</body>
</html>
