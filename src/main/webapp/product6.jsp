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
    <style>
        .hero__search__phone__icon {
            padding-top: 15px;
            font-size: 18px;
            color: #ffacac;
            height: 50px;
            width: 50px;
            background: #f5f5f5;
            line-height: 50px;
            text-align: center;
            border-radius: 50%;
            float: left;
            margin-right: 20px;
            /*padding-top: 14px;*/
        }
    </style>
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
<ul class="breadcrumb">
    <li><a href="">Trang chủ</a></li>
    <%--    <li><a href="/dung-cu/">  Giỏ hàng</a></li>--%>
    <li><span>  Cửa hàng</span></li>
</ul>


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
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/06/57874-89656-large_mobile/men-vi-sinh-synteract-baby-drops-oil-10ml.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Men vi sinh Synteract Baby Drops Oil 10mL" href="#">Men vi sinh Synteract Baby Drops Oil 10mL</a></h6>
                                <h5>110.000<sup>đ</sup><span class="discount">-10%</span></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/11/58158-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Life Space Probiotic Powder for Baby (0 tháng - 3 tuổi) 60g" href="#">Life Space Probiotic Powder for Baby (0 tháng - 3 tuổi) 60g</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/10/59630-94234-large_mobile/tinh-dau-toi-diep-chi-gold.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Tinh dầu tỏi Diệp Chi Gold + (30ml)" href="#">Tinh dầu tỏi Diệp Chi Gold + (30ml)</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/08/62961-1692775053-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Gummies CHEWY VITES bổ sung Vitamin D3" href="#">Gummies CHEWY VITES bổ sung Vitamin D3</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/04/57083-87299-large_mobile/vien-uong-bo-sung-vitamin-me-bau-cho-con-bu-elevit-30-vien.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Viên uống bổ sung Vitamin mẹ bầu, cho con bú Elevit 30 viên" href="#">Viên uống bổ sung Vitamin mẹ bầu, cho con bú Elevit 30 viên</a></h6>
                                <h5>149.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/06/62841-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Viên canxi cho bà bầu, sau sinh Chela calcium D3" href="#">Viên canxi cho bà bầu, sau sinh Chela calcium D3</a></h6>
                                <h5>278.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/combo/2023/07/600x600-292-2023-06-62843-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Viên sắt cho bà bầu Chela - Ferr Forte" href="#">Viên sắt cho bà bầu Chela - Ferr Forte</a></h6>
                                <h5>438.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/06/62842-101770-large_mobile/vien-uong-gold-dha-ho-tro-suc-khoe-me-bau-sau-sinh.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Viên uống Gold DHA hỗ trợ sức khỏe mẹ bầu & sau sinh" href="#">Viên uống Gold DHA hỗ trợ sức khỏe mẹ bầu & sau sinh</a></h6>
                                <h5>238.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/combo/2023/08/504x600-300-2021-10-52603-76617-large_mobile-vitamin-k2-d3-lineabon.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Vitamin D3 giúp tăng chiều cao cho bé Lineabon K2+D3" href="#">Combo 2 Vitamin D3 giúp tăng chiều cao cho bé Lineabon K2+D3</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2021/03/50942-71316-large_mobile/biogaia-protectis-baby-drops-5ml.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Men Vi Sinh BioGaia Protectis (Lọ 5ml)" href="#">Men Vi Sinh BioGaia Protectis (Lọ 5ml)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/08/54912-1693365746-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Thực phẩm bảo vệ sức khỏe Nature's Way Kids Smart Drops DHA (20ml)" href="#">Thực phẩm bảo vệ sức khỏe Nature's Way Kids Smart Drops DHA (20ml)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/combo/2023/08/600x600-938-2023-03-62049-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Sắt Hữu Cơ cho bé Ferrolip baby (30ml)" href="#">Combo 2 Sắt Hữu Cơ cho bé Ferrolip baby (30ml)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/06/57811-89510-large_mobile/combo-2-kem-huu-co-chuan-chau-au-biolizin.jpg">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Kẽm hữu cơ chuẩn châu Âu Biolizin" href="#">Combo 2 Kẽm hữu cơ chuẩn châu Âu Biolizin</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/10/64073-1696228377-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Combo 2 Thực phẩm bảo vệ sức khoẻ Bestical (120ml)" href="#">Combo 2 Thực phẩm bảo vệ sức khoẻ Bestical (120ml)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/05/62644-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Siro ăn ngon Babyplus Hapi Gold X2 (hộp 30 gói)" href="#">Siro ăn ngon Babyplus Hapi Gold X2 (hộp 30 gói)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2021/11/52769-77332-large_mobile/vitamin-d3-k2-drops-m-smarty.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Vitamin D3, K2 giúp tăng chiều cao cho bé M'Smarty Drops" href="#">Vitamin D3, K2 giúp tăng chiều cao cho bé M'Smarty Drops</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/05/62646-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Lợi sữa Hi Mom Hapi (hộp 30 gói)" href="#">Lợi sữa Hi Mom Hapi (hộp 30 gói)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/06/62840-101750-large_mobile/ferrolip.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Sắt sinh học Ferrolip Bầu" href="#">Sắt sinh học Ferrolip Bầu</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2022/11/60402-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Tinh chất Rau - Tảo lục (hộp 30 gói)" href="#">Tinh chất Rau - Tảo lục (hộp 30 gói)</a></h6>
                                <h5>99.000<sup>đ</sup></h5>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="product__item">
                            <div class="product__item__pic set-bg" data-setbg="https://cdn1.concung.com/2023/08/54910-1693365835-trans.png">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    <%--                                    <li><a href="#"><i class="fa fa-retweet"></i></a></li>--%>
                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a title="Nature's Way Kids Smart Vita Gummies Multi Vitamin for Fussy Eaters" href="#">Nature's Way Kids Smart Vita Gummies Multi Vitamin for Fussy Eaters</a></h6>
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
