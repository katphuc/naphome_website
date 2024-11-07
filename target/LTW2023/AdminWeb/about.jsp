<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Giới thiệu</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/product.css">
    <link rel="stylesheet" href="AdminWeb/css/news.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!-- Thêm CSS của Select2 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.snow.css" rel="stylesheet">
    <link href="https://unpkg.com/quill-better-table/dist/quill-better-table.css" rel="stylesheet">
    <style>
        .home-news {
            padding: 20px;
            margin-top: 0;
        }

        .form-news label {
            font-weight: bold;
        }

        .form-news {
            margin-bottom: 10px;
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

        #editor {
            height: 400px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-news">
    <div class="news-content">
        <div class="add-news">
            <div class="add-news-title">Giới thiệu</div>
            <form id="myForm" action="UpdateAbout" method="post" enctype="multipart/form-data">
                <div class="row">
                   <%
                        String title1 = (String) request.getAttribute("title1");
                       String content1 = (String) request.getAttribute("content1");
                       String title2 = (String) request.getAttribute("title2");
                       String content2 = (String) request.getAttribute("content2");
                       String img2 = (String) request.getAttribute("img2");
                       String title3 = (String) request.getAttribute("title3");
                       String content3 = (String) request.getAttribute("content3");
                       String img3 = (String) request.getAttribute("img3");
                   %>
                    <div class="first-class col-12">
                        <div class="form-news row">
                            <label class="col-md-4">Tiêu đề 1</label>
                            <div class="col-md-8">
                                <label>
                                    <input value="<%= title1 %>" name="title1" class="form-news" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Nội dung 1</label>
                            <div class="col-md-8">
                                <label>
                                    <textarea  name="content1" style="resize: none" rows="6" cols="70" spellcheck="false"><%= content1 %></textarea>
                                </label>
                            </div>
                        </div>
                        <div style="margin-top: 80px" class="form-news row">
                            <label class="col-md-4">Tiêu đề 2</label>
                            <div class="col-md-8">
                                <label>
                                    <input value="<%= title2 %>" name="title2" class="form-news" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Nội dung 2</label>
                            <div class="col-md-8">
                                <label>
                                    <textarea name="content2" style="resize: none" rows="6" cols="70" spellcheck="false"><%= content2 %></textarea>
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Hình ảnh 2</label>
                            <div class="col-md-8">
                                <input style="width: 46%" name="image2" id="imageInput"  type="file" accept="image/*" onchange="previewImage()">
                                <input name="image2-old" type="text" value="<%= img2 %>" style="display: none">
                                <br>
                                <img id="imagePreview" src="<%= img2 %>" alt="Hình ảnh đã chọn" style="max-width: 100px; margin-top: 10px;">
                            </div>
                        </div>
                        <div style="margin-top: 80px" class="form-news row">
                            <label class="col-md-4">Tiêu đề 3</label>
                            <div class="col-md-8">
                                <label>
                                    <input value="<%= title3 %>" name="title3" class="form-news" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Nội dung 3</label>
                            <div class="col-md-8">
                                <label>
                                    <textarea name="content3" style="resize: none" rows="6" cols="70" spellcheck="false"><%= content3 %></textarea>
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Hình ảnh 3</label>
                            <div class="col-md-8">
                                <input style="width: 46%" name="image3" id="imageInput2"  type="file" accept="image/*" onchange="previewImage2()">
                                <input name="image3-old" type="text" value="<%= img3 %>" style="display: none">
                                <br>
                                <img id="imagePreview2" src="<%= img3 %>" alt="Hình ảnh đã chọn" style="max-width: 100px; margin-top: 10px;">
                            </div>
                        </div>
                    </div>


                </div>
                <div class="form-news text-center">
                    <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
<%--                    <a class="btn btn-cancel" href="StorageAdmin">Hủy bỏ</a>--%>
                </div>
            </form>
        </div>
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<!-- Thêm JavaScript của jQuery và Select2 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.js"></script>
<script src="https://unpkg.com/quill-better-table/dist/quill-better-table.js"></script>
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

<script>
    function previewImage() {
        const file = document.getElementById('imageInput').files[0];
        const preview = document.getElementById('imagePreview');

        if (file) {
            const reader = new FileReader();

            reader.onload = function(e) {
                preview.src = e.target.result; // Gán đường dẫn hình ảnh cho thẻ img
                preview.style.display = 'block'; // Hiện thẻ img khi có hình ảnh
            }

            reader.readAsDataURL(file); // Đọc file và trả về URL của hình ảnh
        } else {
            preview.src = ""; // Nếu không có file nào được chọn, xóa hình ảnh
            preview.style.display = 'none'; // Ẩn thẻ img nếu không có hình ảnh
        }
    }

    function previewImage2() {
        const file = document.getElementById('imageInput2').files[0];
        const preview = document.getElementById('imagePreview2');

        if (file) {
            const reader = new FileReader();

            reader.onload = function(e) {
                preview.src = e.target.result; // Gán đường dẫn hình ảnh cho thẻ img
                preview.style.display = 'block'; // Hiện thẻ img khi có hình ảnh
            }

            reader.readAsDataURL(file); // Đọc file và trả về URL của hình ảnh
        } else {
            preview.src = ""; // Nếu không có file nào được chọn, xóa hình ảnh
            preview.style.display = 'none'; // Ẩn thẻ img nếu không có hình ảnh
        }
    }
</script>
<%--<script>--%>
<%--    document.addEventListener("DOMContentLoaded", function () {--%>
<%--        document.getElementById("externalButton").addEventListener("click", function () {--%>
<%--            submitForm();--%>
<%--        });--%>
<%--    });--%>

<%--    function submitForm() {--%>
<%--        document.querySelector('#mota').value = quill.root.innerHTML;--%>
<%--        document.getElementById("myForm").submit();--%>
<%--    }--%>
<%--</script>--%>
<%--<script>--%>
<%--    // Initialize Quill editor--%>
<%--    var quill = new Quill('#editor', {--%>
<%--        theme: 'snow',--%>
<%--        modules: {--%>
<%--            toolbar: '#toolbar-container'--%>
<%--        }--%>
<%--    });--%>

<%--    // On form submit, save the editor content to the hidden textarea--%>
<%--    document.querySelector('form').onsubmit = function() {--%>
<%--        document.querySelector('#mota').value = quill.root.innerHTML;--%>
<%--    };--%>
<%--</script>--%>
</body>
</html>
