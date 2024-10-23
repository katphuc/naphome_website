<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Locale" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Thêm sản phẩm</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="AdminWeb/css/all.min.css">
  <link rel="stylesheet" href="AdminWeb/css/style.css">
  <link rel="stylesheet" href="AdminWeb/css/product.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  <style>
    .home-section {
      padding: 20px;
    }

    .form-group label {
      font-weight: bold;
    }

    .form-control {
      margin-bottom: 10px;
    }

    .manager-product {
      background-color: #f5f5f5;
      padding: 15px;
      border-radius: 10px;
    }

    .btn-save, .btn-cancel {
      margin-top: 20px;
      padding: 10px 30px;
      border-radius: 20px;
    }

    .btn-save {
      background: linear-gradient(to right, #5d4848, #d83838);
      color: white;
    }

    .btn-cancel {
      background: #ccc;
      color: #333;
    }

    .section-title {
      font-weight: bold;
      font-size: 20px;
      margin-top: 10px;
    }
  </style>
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
  <div class="home-content">
    <div class="manager-product">
      <div class="section-title">Thêm sản phẩm</div>
      <form id="myForm" action="AddProductAdmin" method="post" class="row">
        <div class="col-md-3">
          <label class="control-label">Mã sản phẩm</label>
          <input name="idP" class="form-control" type="number" value="<%
          int id = (int) request.getAttribute("id");%>" readonly>
        </div>
        <div class="col-md-3">
          <label class="control-label">Tên sản phẩm <span class="text-danger">*</span></label>
          <input name="name" class="form-control" type="text" required>
        </div>
        <div class="col-md-3">
          <label class="control-label">Mã số kỹ thuật của sản phẩm</label>
          <input name="techCode" class="form-control" type="text">
        </div>
        <div class="col-md-3">
          <label class="control-label">Mã nhóm sản phẩm</label>
          <input name="groupCode" class="form-control" type="text">
        </div>

        <div class="col-md-4">
          <label class="control-label">Danh mục sản phẩm</label>
          <select name="category" class="form-control">
            <option value="" disabled selected>--Chọn danh mục sản phẩm--</option>
            <option value="1">Sữa bột cao cấp</option>
            <!-- Add more categories -->
          </select>
        </div>

        <div class="col-md-3">
          <label class="control-label">Thương hiệu</label>
          <input name="brand" class="form-control" type="text">
        </div>

        <div class="col-md-4">
          <label class="control-label">Hình ảnh</label>
          <button class="form-control btn btn-secondary">Chọn hình</button>
        </div>

        <div class="col-md-3">
          <label class="control-label">Giá nhập</label>
          <input name="importPrice" class="form-control" type="number">
        </div>

        <div class="col-md-3">
          <label class="control-label">Giá bán</label>
          <input name="price" class="form-control" type="number">
        </div>

        <div class="col-md-3">
          <label class="control-label">Giảm giá (%)</label>
          <input name="discount" class="form-control" type="number">
        </div>

        <div class="col-md-4">
          <label class="control-label">Số lượng</label>
          <input name="amount" class="form-control" type="number">
        </div>

        <div class="col-md-12">
          <label class="control-label">Mô tả sản phẩm</label>
          <textarea class="form-control" name="description" rows="4"></textarea>
        </div>

        <div class="col-md-12">
          <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
          <a class="btn btn-cancel" href="StorageAdmin">Hủy bỏ</a>
        </div>
      </form>
    </div>
  </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("externalButton").addEventListener("click", function () {
      submitForm();
    });
  });

  function submitForm() {
    document.getElementById("myForm").submit();
  }
</script>
</body>
</html>
