<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thanh toán</title>

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
    <style>

        .hero__search__form form input {
            padding-top: 22px;
        }
        .checkout-form {
            max-width: 100%;
            margin: 0 auto;
            padding: 20px;
            /*border: 1px solid #ccc;*/
            border-radius: 5px;
        }

        h2 {
            text-align: center;
        }

        label, input {
            display: block;
            margin-bottom: 10px;
        }

        input {
            max-height: 33px;
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        select {
            min-height: 33px;
            max-height: 33px;
            width: 100%;
            /*padding: 10px;*/
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .select_auto {
            margin-bottom: 10px;
        }

        .checkout__order__products {
            display: flex;
            justify-content: space-between;
            font-weight: bold;
        }

        .product-title {
            flex: 1;
            white-space: nowrap; /* Ngăn text xuống dòng */
            overflow: hidden;    /* Ẩn phần dư ra ngoài */
            text-overflow: ellipsis; /* Hiển thị dấu "..." cho phần dư */
            max-width: 200px; /* Độ rộng tối đa mà bạn muốn */
        }

        .product-price {
            flex: 1;
            text-align: right;
        }

        ul {
            list-style: none;
            padding: 0;
        }

        li {
            display: flex;
            justify-content: space-between;
        }

    </style>

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
    <li><a href="/dung-cu/">  Giỏ hàng</a></li>
    <li><span>  Thanh toán</span></li>
</ul>




<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">

        <div class="checkout__form">
            <h4>Hoàn tất đơn hàng của bạn</h4>

                <div class="row">
                    <div class="col-lg-7 col-md-6">
                        <div class="checkout-form">

                            <form>
                                <label for="name">Tên người nhận</label>
                                <input type="text" id="name" name="name" required>

                                <label for="email">Email:</label>
                                <input type="email" id="email" name="email" required>

                                <div class="select_auto">
                                    <label for="city">Chọn tỉnh thành:</label>
                                    <select class="form-select form-select-sm mb-3" id="city" aria-label=".form-select-sm">
                                        <option value="" selected></option>
                                    </select>

                                    <label for="district">Chọn quận huyện:</label>
                                    <select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm">
                                        <option value="" selected></option>
                                    </select>

                                    <label for="ward">Chọn phường xã:</label>
                                    <select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm">
                                        <option value="" selected></option>
                                    </select>
                                </div>

                                <label for="address">Địa chỉ:</label>
                                <input type="text" id="address" name="address" required>

                                <label for="card">Ghi chú:</label>
                                <input type="text" id="card" name="card" required>




                            </form>
                        </div>




                    <%--                        <div class="checkout__input">--%>
<%--                            <p>Địa chỉ<span>*</span></p>--%>
<%--                            <input type="text" placeholder="Street Address" class="checkout__input__add">--%>
<%--                            <input type="text" placeholder="Apartment, suite, unite ect (optinal)">--%>
<%--                        </div>--%>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="checkout__order">
                            <h4>Đơn hàng của bạn</h4>
                            <div class="checkout__order__products">
                                <span class="product-title">Sản phẩm</span>
                                <span class="product-price">Thành tiền</span>
                            </div>
                            <ul>
                                <li>
                                    <span class="product-title">Set 2 body tam giác Animo NB522014 (0-12M,xanh-trắng mũi tên)</span>
                                    <span class="product-price">100.000<sup>đ</sup>(x2)</span>
                                </li>
                                <li>
                                    <span class="product-title">Đầm bé gái_BST hoa nhí Animo G1221005 (6M-3Y,Trắng họa tiết)</span>
                                    <span class="product-price">200.000<sup>đ</sup>(x1)</span>
                                </li>
                                <li>
                                    <span class="product-title">Bỉm tã dán Moony size S, 84 miếng (4-8kg) (giao bao bì ngẫu nhiên)</span>
                                    <span class="product-price">100.000<sup>đ</sup>(x1)</span>
                                </li>
                            </ul>
                            <div class="checkout__order__subtotal">Tổng tiền <span style="color: #dd2222">500.000<sup>đ</sup></span></div>
                            <div class="checkout__order__total">Phí giao hàng <span>0<sup>đ</sup></span></div>
                            <div class="checkout__order__total">Tổng tiền phải trả <span>500.000<sup>đ</sup></span></div>



                            <button type="submit" class="site-btn" style="font-family: math">ĐẶT HÀNG</button>
                        </div>
                    </div>
                </div>

        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<%@include file="include/footer.jsp"%>
<!-- Footer Section End -->

<!-- Js Plugins -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
<script>
    var citis = document.getElementById("city");
    var districts = document.getElementById("district");
    var wards = document.getElementById("ward");
    var Parameter = {
        url: "https://raw.githubusercontent.com/kenzouno1/DiaGioiHanhChinhVN/master/data.json",
        method: "GET",
        responseType: "application/json",
    };
    var promise = axios(Parameter);
    promise.then(function (result) {
        renderCity(result.data);
    });

    function renderCity(data) {
        for (const x of data) {
            citis.options[citis.options.length] = new Option(x.Name, x.Id);
        }
        citis.onchange = function () {
            district.length = 1;
            ward.length = 1;
            if(this.value != ""){
                const result = data.filter(n => n.Id === this.value);

                for (const k of result[0].Districts) {
                    district.options[district.options.length] = new Option(k.Name, k.Id);
                }
            }
        };
        district.onchange = function () {
            ward.length = 1;
            const dataCity = data.filter((n) => n.Id === citis.value);
            if (this.value != "") {
                const dataWards = dataCity[0].Districts.filter(n => n.Id === this.value)[0].Wards;

                for (const w of dataWards) {
                    wards.options[wards.options.length] = new Option(w.Name, w.Id);
                }
            }
        };
    }
</script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<%--<script src="js/jquery.nice-select.min.js"></script>--%>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<%--<script src="js/main.js"></script>--%>




</body>

</html>