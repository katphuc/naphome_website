<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Thêm Sản Phẩm</div>
            <form class="row">
                <div class="form-group col-md-3">
                    <label class="control-label">Mã sản phẩm </label>
                    <input class="form-control" type="number" placeholder="">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Tên sản phẩm</label>
                    <input class="form-control" type="text">
                </div>

                <div class="form-group  col-md-3">
                    <label class="control-label">Số lượng</label>
                    <input class="form-control" type="number">
                </div>

                <div class="form-group col-md-3">
                    <label class="control-label">Danh mục</label>
                    <select class="form-control">
                        <option>-- Chọn danh mục --</option>
                        <option>Sữa bột cao cấp</option>
                        <option>Bỉm tả khuyến mãi</option>
                        <option>Sữa tươi các loại</option>
                        <option>Ăn dặm, dinh dưỡng</option>
                        <option>Vitamin & Sức khỏe</option>
                        <option>Đồ chơi, học tập</option>
                    </select>
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giá bán</label>
                    <input class="form-control" type="text">
                </div>
                <div class="form-group col-md-3">
                    <label class="control-label">Giảm giá</label>
                    <input class="form-control" type="number">
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Ảnh sản phẩm</label>
                    <div id="myfileupload">
                        <input type="file" id="uploadfile" name="ImageUpload" onchange="readURL(this);">
                    </div>
                    <div id="thumbbox">
                        <img height="450" width="400" alt="Thumb image" id="thumbimage" style="display: none">
<%--                        <a class="removeimg" href="javascript:"></a>--%>
                    </div>
                </div>
                <div class="form-group col-md-12">
                    <label class="control-label">Mô tả sản phẩm</label>
                    <textarea class="form-control" name="mota" id="mota"></textarea>
                </div>
            </form>
            <button class="btn btn-save" type="button">Lưu lại</button>
            <a class="btn btn-cancel" href="product.jsp">Hủy bỏ</a>
        </div>
    </div>
</section>
<script src="../bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="../bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
