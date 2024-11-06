<%@ page import="Model.Product" %>
<%@ page import="Dao.ProductDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>Quản lý</title>
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <link rel="stylesheet" href="AdminWeb/css/all.min.css">
  <link rel="stylesheet" href="AdminWeb/css/style.css">
  <link rel="stylesheet" href="AdminWeb/css/product.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
  <div class="home-content">
    <div style="height: 90%" class="manager-product">
      <div class="title">Chỉnh sửa tin tức</div>
      <form id="myForm" action="UpdateBlogAdmin" method="post" enctype="multipart/form-data" class="row">
        <%
          int id = (int) request.getAttribute("idB");
          String title = (String) request.getAttribute("title");
          String meta = (String) request.getAttribute("meta");
          String content = (String) request.getAttribute("content");
          String img = (String) request.getAttribute("img");



        %>
        <div class="form-group col-md-3">
          <label class="control-label">Mã  </label>
          <input name="idB" class="form-control" type="number" value="<%= id %>" placeholder="" readonly>
        </div>
        <div class="form-group col-md-3">
          <label class="control-label">Tiêu đề</label>
          <input name="title" class="form-control" type="text" value="<%= title %>">
        </div>

        <div class="form-group  col-md-3">
          <label class="control-label">Thẻ meta</label>
          <input name="meta" class="form-control" type="text" value="<%= meta %>">
        </div>

<%--        <div class="form-group col-md-3">--%>
<%--          <label class="control-label">Danh mục</label>--%>
<%--          <select name="type" class="form-control"  >--%>
<%--            <option value="<%=  id_type %>"> <%=  nameType %></option>--%>
<%--            <option value="1">Sữa bột cao cấp</option>--%>
<%--            <option value="2">Bỉm tả khuyến mãi</option>--%>
<%--            <option value="3">Ăn dặm, dinh dưỡng</option>--%>
<%--            <option value="4">Vitamin & Sức khỏe</option>--%>
<%--            <option value="5">Chăm sóc gia đình</option>--%>
<%--            <option value="6">Đồ dùng mẹ & bé</option>--%>
<%--            <option value="7">Thời trang & phụ kiện</option>--%>
<%--            <option value="8">Đồ chơi, học tập</option>--%>

<%--          </select>--%>
<%--        </div>--%>

        <%--                <div class="form-group col-md-3">--%>
        <%--                    <label class="control-label">Thương hiệu</label>--%>
        <%--                    <select name="type" class="form-control"  >--%>
        <%--                        <option value="<%=  idVendor %>"> <%=  nameVendor %></option>--%>
        <%--                        <option value="1">Sữa bột cao cấp</option>--%>
        <%--                        <option value="2">Bỉm tả khuyến mãi</option>--%>
        <%--                        <option value="3">Ăn dặm, dinh dưỡng</option>--%>
        <%--                        <option value="4">Vitamin & Sức khỏe</option>--%>
        <%--                        <option value="5">Chăm sóc gia đình</option>--%>
        <%--                        <option value="6">Đồ dùng mẹ & bé</option>--%>
        <%--                        <option value="7">Thời trang & phụ kiện</option>--%>
        <%--                        <option value="8">Đồ chơi, học tập</option>--%>

        <%--                    </select>--%>
        <%--                </div>--%>


        <div  class="form-group col-md-3">
<%--          <label class="control-label">Nội dung</label>--%>
<%--          <input name="content" class="form-control" type="text" value="<%= content %>">--%>
        </div>
        <div style="display: none" class="form-group col-md-3">
<%--          <label class="control-label">Giảm giá (%)</label>--%>
<%--          <input name="discount" class="form-control" type="number" value="<%=  discount %>">--%>
        </div>


        <%--                <div class="form-group col-md-4">--%>
        <%--                    <label class="control-label">Ảnh</label>--%>
        <%--                    <input name="image" class="form-control" type="text" value="<%=  imageURL %>">--%>
        <%--                </div>--%>

        <div class="form-group col-md-4">
          <label for="imageInput">Chọn tệp hình ảnh:</label>
          <input style="width: 125%; border: none" name="image" id="imageInput" type="file" accept="image/*" class="form-control"  onchange="previewImage()">
          <input name="image2" type="text" value="<%= img %>" style="display: none">
          <br>
          <img id="imagePreview" src="<%= img %>" alt="Hình ảnh đã chọn" style="max-width: 100px; margin-top: 10px;">
        </div>



        <%--                <div class="form-group col-md-12">--%>
        <%--                    <label class="control-label">Mô tả sản phẩm</label>--%>
        <%--                    <textarea  class="form-control" name="describe" id="mota"><%=  describe %></textarea>--%>
        <%--                </div>--%>

        <div class="form-group col-md-12">
          <!-- Include Quill library -->
          <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
          <script src="https://cdn.quilljs.com/1.3.6/quill.min.js"></script>
          <div class="description">
            <label class="descript">Nội dung</label>
            <%--                    <textarea class="form-control" name="describe" id="mota"></textarea>--%>
            <div id="toolbar-container">
                                          <span class="ql-formats">
                                            <select class="ql-font"></select>
                                            <select class="ql-size"></select>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-bold"></button>
                                            <button class="ql-italic"></button>
                                            <button class="ql-underline"></button>
                                            <button class="ql-strike"></button>
                                          </span>
              <span class="ql-formats">
                                            <select class="ql-color"></select>
                                            <select class="ql-background"></select>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-script" value="sub"></button>
                                            <button class="ql-script" value="super"></button>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-header" value="1"></button>
                                            <button class="ql-header" value="2"></button>
                                            <button class="ql-blockquote"></button>
                                            <button class="ql-code-block"></button>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-list" value="ordered"></button>
                                            <button class="ql-list" value="bullet"></button>
                                            <button class="ql-indent" value="-1"></button>
                                            <button class="ql-indent" value="+1"></button>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-direction" value="rtl"></button>
                                            <select class="ql-align"></select>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-link"></button>
                                            <button class="ql-image"></button>
                                            <button class="ql-video"></button>
                                            <button class="ql-formula"></button>
                                          </span>
              <span class="ql-formats">
                                            <button class="ql-clean"></button>
                                          </span>
            </div>
            <div id="editor">
              <p><%= content %></p>
            </div>
            <!-- Hidden textarea to store the HTML content -->
            <textarea name="describe" id="mota"  style="display: none" ></textarea>
          </div>
        </div>

        <div class="form-group text-center">
          <button style="margin-top: 130px" id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
          <a style="margin-top: 130px" class="btn btn-cancel" href="BlogAdmin">Hủy bỏ</a>
        </div>
      </form>

    </div>
  </div>
</section>
<script src="../bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="../bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="AdminWeb/js/main.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    // Bắt sự kiện click cho nút ở ngoài form
    document.getElementById("externalButton").addEventListener("click", function () {
      // Gọi hàm submitForm() khi nút được nhấn
      submitForm();
    });
  });

  // Hàm để gửi form
  function submitForm() {
    // Lấy đối tượng form bằng ID
    var form = document.getElementById("myForm");

    // Gửi form
    form.submit();
  }
</script>
<script>
  function previewImage() {
    var input = document.getElementById('imageInput');
    var preview = document.getElementById('imagePreview');

    // Kiểm tra xem có tệp nào đã được chọn không
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
        // Cập nhật nguồn cho thẻ img
        preview.src = e.target.result; // Hiển thị ảnh đã chọn
      };
      reader.readAsDataURL(input.files[0]); // Đọc tệp dưới dạng Data URL
    }
  }
</script>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("externalButton").addEventListener("click", function () {
      submitForm();
    });
  });

  function submitForm() {
    document.querySelector('#mota').value = quill.root.innerHTML;
    document.getElementById("myForm").submit();
  }
</script>
<script>
  // Initialize Quill editor
  var quill = new Quill('#editor', {
    theme: 'snow',
    modules: {
      toolbar: '#toolbar-container'
    }
  });

  // On form submit, save the editor content to the hidden textarea
  document.querySelector('form').onsubmit = function() {
    document.querySelector('#mota').value = quill.root.innerHTML;
  };
</script>
</body>
</html>
