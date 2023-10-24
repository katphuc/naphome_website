<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 22/10/2023
  Time: 6:00 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>


<%@include file="include/header.jsp"%>

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



<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">




                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Bán chạy</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2022/03/56291-85271-large_mobile/sua-growplus-do-1-5kg-tu-1-tuoi.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Sữa GrowPlus+ Đỏ 1,5kg (từ 1 tuổi)</h6>
                                            <span>575.000<sup>đ</sup> </span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2023/04/48750-trans.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Bỉm tã quần Moony bé trai size XL 38 miếng (12-22kg) (giao bao bì ngẫu nhiên)</h6>
                                            <span>335.000<sup>đ</sup></span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2023/05/62439-trans.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Tã quần Huggies Skincare gói cực đại (L, 9-14kg, 68 miếng)</h6>
                                            <span>335.000<sup>đ</sup></span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/combo/2023/07/600x600-748-2023-03-59031-trans.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Máy xay đa năng cao cấp Animo 0.3L (SW-MG808)</h6>
                                            <span>590.000<sup>đ</sup></span>
                                        </div>
                                    </a>
                                </div>

                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2023/02/61719-trans.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Tã quần Nhật Bản Takato siêu mềm mại (L, 68 miếng)</h6>
                                            <span>325.000<sup>đ</sup></span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2020/09/42532-65686-large_mobile/sua-tam-goi-toan-than-johnson-baby-500ml.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Sữa tắm gội toàn thân Johnson Baby 500ml</h6>
                                            <span>124.000<sup>đ</sup></span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2023/10/52365-1696583967-trans.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Sữa Enfagrow A+ số 4 830g (2-6 tuổi) 2Flex</h6>
                                            <span>485.000<sup>đ</sup></span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="https://cdn1.concung.com/2021/10/26391-75896-large_mobile/dung-dich-giat-quan-ao-aga-ae-chai-3l.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text">
                                            <h6>Nước giặt Hàn quốc AGA - AE kháng khuẩn & bảo vệ da bé - Moonlight 3L</h6>
                                            <span>193.500<sup>đ</sup></span>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">

                <div class="filter__item">
                    <div class="row">
                        <div class="col-lg-3 col-md-5">
                            <div class="filter__sort">
<%--                                <span>Bộ lọc</span>--%>
                                <select>
                                    <option value="0">Giá từ thấp - cao</option>
                                    <option value="0">Giá từ cao - thấp</option>
                                    <option value="0">Thứ tự A - Z</option>
                                    <option value="0">Thứ tự Z - A</option>
                                </select>
                            </div>
                        </div>


                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64221-1697710018-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Set 2 body tam giác Animo NB522014 (0-12M,xanh-trắng mũi tên)" href="#">Set 2 body tam giác Animo NB522014 (0-12M,xanh-trắng mũi tên)</a></h6>
                                <h5>149.000<sup>đ</sup><span class="discount">-10%</span></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64225-1697709895-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Set 2 body tam giác Animo NB522013 (0-12M,cam-trắng sọc cam)" href="#">Set 2 body tam giác Animo NB522013 (0-12M,cam-trắng sọc cam)</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64339-1697598112-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Set Bodysuit tam giác DT Animo KV423007 (0-12M,Cam_Xám họa tiết)" href="#">Set Bodysuit tam giác DT Animo KV423007 (0-12M,Cam_Xám họa tiết)</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64307-1697440760-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
<%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ tính năng dài vải modal Animo VĐ522025 (0-12M,Kem)" href="#">Bộ tính năng dài vải modal Animo VĐ522025 (0-12M,Kem)</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64301-1697441881-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Body tính năng đùi vải modal Animo VĐ522031 (0-12M,Kem)" href="#">Body tính năng đùi vải modal Animo VĐ522031 (0-12M,Kem)</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64249-1697529079-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Cặp áo sơ sinh 0-3M cài chéo tay dài Animo KV223016 (Cam họa tiết_Trắng) và KV223021 (Trắng họa tiết_Tím)" href="#">Combo 2 Cặp áo sơ sinh 0-3M cài chéo tay dài Animo KV223016 (Cam họa tiết_Trắng) và KV223021 (Trắng họa tiết_Tím)</a></h6>
                                <h5>278.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64274-1697710393-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Set 2 body tam giác 0-3M Animo NB522013 (cam-trắng sọc cam) và NB522014 (xanh-trắng mũi tên)" href="#">Combo 2 Set 2 body tam giác 0-3M Animo NB522013 (cam-trắng sọc cam) và NB522014 (xanh-trắng mũi tên)</a></h6>
                                <h5>438.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64269-1697532562-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Cặp quần sơ sinh 3-6M ngắn Animo KV223014 (Trắng họa tiết_Xám) và KV223013 (Xám họa tiết_Trắng)" href="#">Combo 2 Cặp quần sơ sinh 3-6M ngắn Animo KV223014 (Trắng họa tiết_Xám) và KV223013 (Xám họa tiết_Trắng)</a></h6>
                                <h5>238.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/07/56668-90367-large_mobile/bo-so-sinh-tinh-nang-ngan-vai-luoi-animo-i0322018-0-24m-cam.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322018 (0-12M,Cam)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322018 (0-12M,Cam)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/08/56656-1692155038-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322020 (0-12M,Cam)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322020 (0-12M,Cam)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/56686-1696842641-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322022 (0-24M,Xám)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322022 (0-24M,Xám)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/06/56674-89630-large_mobile/bo-so-sinh-tinh-nang-ngan-vai-luoi-animo-i0322017-0-24m-beige.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322017 (0-12M,Beige)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322017 (0-12M,Beige)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/07/56641-90348-large_mobile/bo-so-sinh-tinh-nang-ngan-vai-luoi-animo-0-24m-hong.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322013 (0-12M,Hồng)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322013 (0-12M,Hồng)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/07/56629-90360-large_mobile/bo-so-sinh-tinh-nang-ngan-vai-luoi-animo-0-9m-beige.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo (0-12M,Beige)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo (0-12M,Beige)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/02/56652-98112-large_mobile/bo-so-sinh-tinh-nang-ngan-vai-luoi-animo-i0322020-12-24m-cam.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322020 (12-24M,Cam)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/07/56635-90352-large_mobile/bo-so-sinh-tinh-nang-ngan-vai-luoi-animo-0-9m-xanh.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322014 (0-12M,Xanh)" href="#">Bộ sơ sinh tính năng ngắn, vải lưới Animo I0322014 (0-12M,Xanh)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/52983-1696414473-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Đầm bé gái_BST hoa nhí Animo G1221005 (6M-3Y,Trắng họa tiết)" href="#">Đầm bé gái_BST hoa nhí Animo G1221005 (6M-3Y,Trắng họa tiết)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/combo/2023/07/600x600-415-2023-05-62585-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ tính năng ngắn vải modal Animo VĐ522022 (0-12M,Kem)" href="#">Bộ tính năng ngắn vải modal Animo VĐ522022 (0-12M,Kem)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/05/62591-101001-large_mobile/bo-tinh-nang-ngan-vai-modal-animo-vd522021-0-3m-hong.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bộ tính năng ngắn vải modal Animo VĐ522021 (0-12M,Hồng)" href="#">Bộ tính năng ngắn vải modal Animo VĐ522021 (0-12M,Hồng)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/05/53703-88667-large_mobile/bodysuit-ss-dai-vai-cellulose-animo-i1221006-0-12m-trang.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Bodysuit SS dài vải Cellulose, Animo I1221006 (0-12M,Trắng)" href="#">Bodysuit SS dài vải Cellulose, Animo I1221006 (0-12M,Trắng)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="product__pagination">
                    <a href="product1.jsp">1</a>
                    <a href="product2.jsp">2</a>
                    <a href="product3.jsp">3</a>
                    <a href="product4.jsp">4</a>
                    <a href="product5.jsp">5</a>
                    <a href="product6.jsp">6</a>
                    <a href="product7.jsp">7</a>
                    <a href="product8.jsp">8</a>
                    <a href="product9.jsp">9</a>
                    <a href="product10.jsp">10</a>
                    <a href="product11.jsp">11</a>
                    <a href="product12.jsp">>></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

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
