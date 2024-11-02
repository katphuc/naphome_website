<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm tin tức</title>
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
            <div class="add-news-title">Thêm Tin Tức</div>
            <form id="myForm" action="" method="post">
                <div class="row">
                    <div class="first-class col-12">
                        <div class="form-news row">
                            <label class="col-md-4">Title Tin Tức</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="titleNews" class="form-news" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Meta Description</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="desNews" class="form-news" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-news row">
                            <label class="col-md-4">Hình ảnh hiển thị</label>
                            <div class="col-md-8">
                                <button class="form-news btn btn-secondary">Chọn hình</button>
                            </div>
                        </div>
                    </div>
                    <div class="second-class col-12">

                        <div class="description">
                            <label class="descript">Mô tả tin tức</label>
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
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-news text-center">
                    <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
                    <a class="btn btn-cancel" href="StorageAdmin">Hủy bỏ</a>
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
    const quill = new Quill('#editor', {
        modules: {
            syntax: true,
            toolbar: '#toolbar-container',
        },
        placeholder: 'Compose an epic...',
        theme: 'snow',
    });
</script>
</body>
</html>
