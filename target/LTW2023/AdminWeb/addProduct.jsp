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
    <!-- Thêm CSS của Select2 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/quill@2.0.2/dist/quill.snow.css" rel="stylesheet">
    <link href="https://unpkg.com/quill-better-table/dist/quill-better-table.css" rel="stylesheet">


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

        #editor {
            height: 400px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="add-product">
            <div class="section-title">Thêm Sản Phẩm</div>
            <form id="myForm" action="AddProductAdmin" method="post">
                <div class="row">
                    <!-- Div đầu tiên chứa một số thông tin sản phẩm -->
                    <div class="first-class col-md-6">
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Mã sản phẩm</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="idP" class="form-control" type="number" readonly>
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Tên sản phẩm<span
                                    class="text-danger">*</span></label>
                            <div class="col-md-8">
                                <label>
                                    <input name="name" class="form-control" type="text" required>
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Mã số kỹ thuật</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="techCode" class="form-control" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Mã nhóm sản phẩm</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="groupCode" class="form-control" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Danh mục sản phẩm</label>
                            <div class="col-md-8">
                                <div class="dropdown" data-type="category">
                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        --Chọn danh mục sản phẩm--
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <div class="dropdown-item">
                                            <label>
                                                <input type="checkbox" value="1"> Thiết bị đo
                                            </label>
                                            <div style="padding-left: 20px;">
                                                <label>
                                                    <input type="checkbox" value="1-1"> Thước panme
                                                </label>
                                            </div>
                                        </div>
                                        <div class="dropdown-item">
                                            <label>
                                                <input type="checkbox" value="2"> Cảm biến
                                            </label>
                                            <div style="padding-left: 20px;">
                                                <label>
                                                    <input type="checkbox" value="2-1"> Cảm biến lực
                                                </label>
                                            </div>
                                        </div>
                                        <!-- Thêm nhiều danh mục hơn -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Giá nhập</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="importPrice" class="form-control" type="number">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Giá bán</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="price" class="form-control" type="number">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Giảm giá (%)</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="discount" class="form-control" type="number">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Số lượng</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="amount" class="form-control" type="number">
                                </label>
                            </div>
                        </div>
                    </div>

                    <!-- Div thứ hai chứa các thông tin khác của sản phẩm -->
                    <div class="second-class col-md-6">
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Thương hiệu</label>
                            <div class="col-md-8">
                                <div class="dropdown" data-type="brand">
                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                            id="dropdownBrandButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                        --Chọn thương hiệu--
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownBrandButton">
                                        <div class="dropdown-item">
                                            <label>
                                                <input type="checkbox" value="Mitutoyo"> Mitutoyo
                                            </label>
                                        </div>
                                        <div class="dropdown-item">
                                            <label>
                                                <input type="checkbox" value="Teacock"> Teacock
                                            </label>
                                        </div>
                                        <!-- Thêm nhiều thương hiệu hơn -->
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Thuế VAT (%)</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="vat" class="form-control" type="number">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Xuất xứ</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="origin" class="form-control" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Thời gian bảo hành</label>
                            <div class="col-md-8">
                                <label>
                                    <input name="warranty" class="form-control" type="text">
                                </label>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-md-4 col-form-label">Hình ảnh</label>
                            <div class="col-md-8">
                                <button class="form-control btn btn-secondary">Chọn hình</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="description">
                    <label class="descript">Mô tả sản phẩm</label>
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

                <div class="form-group text-center">
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
    $(document).ready(function () {
        // Thay đổi tên nút khi có lựa chọn danh mục sản phẩm
        $('.dropdown[data-type="category"] input[type="checkbox"]').change(function () {
            let selectedCategories = [];
            $('.dropdown[data-type="category"] input[type="checkbox"]:checked').each(function () {
                selectedCategories.push($(this).parent().text().trim());
            });
            $('#dropdownMenuButton').text(selectedCategories.length > 0 ? selectedCategories.join(', ') : '--Chọn danh mục sản phẩm--');
        });

        // Thay đổi tên nút khi có lựa chọn thương hiệu
        $('.dropdown[data-type="brand"] input[type="checkbox"]').change(function () {
            let selectedBrands = [];
            $('.dropdown[data-type="brand"] input[type="checkbox"]:checked').each(function () {
                selectedBrands.push($(this).parent().text().trim());
            });
            $('#dropdownBrandButton').text(selectedBrands.length > 0 ? selectedBrands.join(', ') : '--Chọn thương hiệu--');
        });

    });


</script>


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
