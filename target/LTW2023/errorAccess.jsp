<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Lỗi truy cập</title>
    <link rel="icon" href="img/favicon-404.png" type="image/png">
    <link rel="stylesheet" href="css/font.css" type="text/css">
    <style>
        /*======================
    404 page
=======================*/
        body{
            background-image: url("img/error-background.png");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .contant_box_404 h2{
            width: 150%;
            text-shadow: 1px 1px 2px lightgrey;
            padding-top: 200px;
            font-family: 'MRCHMaverickGrotesk', sans-serif;
            font-weight: 900;
            font-style: normal;
            color: #133E87;
            font-size: 55px;
        }

        .link_404{
            color: #fff!important;
            padding: 10px 20px;
            background: linear-gradient(to right, #201c1c, #9d2424);
            margin: 20px 0;
            border-radius: 12px;
            display: inline-block;
            width: 30%;
        }

    </style>
</head>
<body>
<section class="page_404" style="text-align: center">
    <div class="container spad">
        <div class="row" style="height: 735px">
            <div class="col-lg-6 ">
            </div>
            <div class="col-lg-6 ">
                    <div class="contant_box_404">
                        <h2>Chúng tôi không tìm thấy trang mà bạn muốn.</br>Vui lòng liên hệ với Administrator để biết thêm chi tiết.</h2>
                    </div>
            </div>
        </div>
        <div class="row" style="display: flow">
            <a href="Home" class="link_404">Trở về trang chủ</a>
        </div>
    </div>
</section>
</body>
</html>