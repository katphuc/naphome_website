<%@ page import="Dao.ProductDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quản lý</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="AdminWeb/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="AdminWeb/css/all.min.css">
    <link rel="stylesheet" href="AdminWeb/css/style.css">
    <link rel="stylesheet" href="AdminWeb/css/product.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        .icon-wrapper {
            margin-top: 2px;
            background-color: #ffacac;
            display: inline-block;
            margin-right: 10px;
            padding: 5px; /* Điều này tạo khoảng trắng xung quanh biểu tượng */
            border-radius: 50%; /* Để tạo biểu tượng hình tròn */
        }

        .icon-wrapper i {
            color: #ffffff; /* Màu trắng cho biểu tượng */
        }
    </style>
</head>
<body>
<%@include file="include/menu.jsp" %>
<section class="home-section">
    <div class="home-content">
        <div class="manager-product">
            <div class="title">Danh Sách Sản Phẩm Trong Cửa Hàng</div>
            <div class="row">
                <div class="col-md-12">

                    <table id="table-id" class="table table-hover table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">Mã</th>
                            <th scope="col">Tên sản phẩm</th>
                            <%--                            <th scope="col">Khối lượng</th>--%>
                            <th scope="col">Ảnh</th>
<%--                            <th scope="col">Số lượng</th>--%>
<%--                            <th scope="col">Tình trạng</th>--%>
<%--                            <th scope="col">Giá tiền</th>--%>
<%--                            <th scope="col">Giảm giá</th>--%>
                            <th scope="col">Danh mục</th>
                            <th scope="col">Thương hiệu</th>
<%--                            <th scope="col">Ẩn</th>--%>
                            <th scope="col">Chức năng</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="products" items="${products}">
                            <tr>
                                <th scope="row">${products.id}</th>
                                <td>${products.name}</td>
                                    <%--                            <td>300G</td>--%>
                                <td><img src="${products.getImageUrl()}" style="max-width: 100px; max-height: 100px;"></td>
<%--                                <td>${products.amount_shop}</td>--%>
<%--                                <td><span class="badge ${products.amount_shop == 0 ? 'bg-danger' : 'bg-success'}">${products.amount_shop == 0 ? 'Hết hàng' : 'Còn hàng'}</span></td>--%>
<%--                                <td><fmt:formatNumber value="${products.price}" pattern="#,##0"/><sup>đ</sup></td>--%>
<%--                                <td>${products.discount}<span>%</span></td>--%>
<%--                                <% String vendor = ProductDao.getNameVendor()%>--%>
                                <td>${products.getNameType()}</td>
                                <td>${ProductDao.getNameVendor(products.getId_vendor())}</td>
<%--                                <td>${products.getIs_visible()}</td>--%>
                                <td>
<%--                                    <a title="Chuyển hàng từ kho lên" href="UpToShop?id=${products.id}" class="icon-link">--%>
<%--                                        <i class="icon-wrapper">--%>
<%--                                            <i class="fas fa-arrow-up"></i>--%>
<%--                                        </i>--%>
<%--                                    </a>--%>
                                    <a title="Chỉnh sửa" href="UpdateProductAdmin?id=${products.id}" class="icon-link">
                                        <i class="icon-wrapper">
                                            <i class="fas fa-pen"></i>
                                        </i>
                                    </a>
                                    <c:if test="${products.getIs_visible() == 1}">
                                        <a id="${products.id}" title="Sản phẩm đang được hiển thị"  class="icon-link" onclick="hideProduct(${products.id})" >
                                            <i class="icon-wrapper">
                                                <i class="fa-solid fa-eye"></i>
                                            </i>
                                        </a>
                                    </c:if>
                                    <c:if test="${products.getIs_visible() == 0}">
                                        <a id="${products.id}" title="Sản phẩm đang được ẩn"  class="icon-link" onclick="showProduct(${products.id})" >
                                            <i class="icon-wrapper">
                                                <i class="fa-solid fa-eye-slash"></i>
                                            </i>
                                        </a>
                                    </c:if>


                                        <%--                                <a title="Xóa" href="#" class="icon-link">--%>
                                        <%--                                    <i class="icon-wrapper">--%>
                                        <%--                                        <i class="fas fa-trash-alt"></i> <!-- Biểu tượng thùng rác -->--%>
                                        <%--                                    </i>--%>
                                        <%--                                </a>--%>



                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="AdminWeb/js/jquery.min.js"></script>
<script src="AdminWeb/js/jquery.dataTables.js"></script>

<script type="text/javascript" charset="utf8" src="AdminWeb/js/bootstrap.bundle.min.js"></script>
<script>$("#table-id").DataTable();
</script>
<script>
    function hideProduct(productId) {
        console.log('Thanh')
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "HideProduct?id=" + productId, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                if (response.success) {
                    // Cập nhật giao diện người dùng, ví dụ ẩn sản phẩm
                    // document.getElementById(productId).style.display = "none";
                    var newLink = document.createElement('a');
                    newLink.id = productId
                    newLink.title = 'Sản phẩm đang được ẩn'; // Nội dung hiển thị cho thẻ a
                    newLink.className = 'icon-link'; // Thêm lớp CSS nếu cần
                    newLink.onclick = function() {
                        showProduct(productId); // Gọi hàm showProduct với productId
                        return false; // Ngăn chặn hành vi mặc định của thẻ a
                    };

                    // Tạo thẻ i mới
                    var icon = document.createElement('i');
                    icon.className = 'icon-wrapper';

                    var icon2 = document.createElement('i');
                    icon2.className = 'fa-solid fa-eye-slash';

                    icon.appendChild(icon2)

                    // Thêm thẻ i vào thẻ a
                    newLink.appendChild(icon);

                    // Thay thế thẻ hiện tại bằng thẻ a mới
                    var currentElement = document.getElementById(productId);
                    currentElement.parentNode.replaceChild(newLink, currentElement);
                } else {
                    alert("Failed to hide product.");
                }
            }
        };
        xhr.send();
    }

    function showProduct(productId) {
        console.log('Thanh')
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "ShowProduct?id=" + productId, true);
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var response = JSON.parse(xhr.responseText);
                if (response.success) {
                    // Cập nhật giao diện người dùng, ví dụ ẩn sản phẩm
                    // document.getElementById(productId).style.display = "none";
                    var newLink = document.createElement('a');
                    newLink.id = productId
                    newLink.title = 'Sản phẩm đang được hiển thị'; // Nội dung hiển thị cho thẻ a
                    newLink.className = 'icon-link'; // Thêm lớp CSS nếu cần
                    newLink.onclick = function() {
                        hideProduct(productId); // Gọi hàm showProduct với productId
                        return false; // Ngăn chặn hành vi mặc định của thẻ a
                    };

                    // Tạo thẻ i mới
                    var icon = document.createElement('i');
                    icon.className = 'icon-wrapper';

                    var icon2 = document.createElement('i');
                    icon2.className = 'fa-solid fa-eye';

                    icon.appendChild(icon2)

                    // Thêm thẻ i vào thẻ a
                    newLink.appendChild(icon);

                    // Thay thế thẻ hiện tại bằng thẻ a mới
                    var currentElement = document.getElementById(productId);
                    currentElement.parentNode.replaceChild(newLink, currentElement);
                } else {
                    alert("Failed to show product.");
                }
            }
        };
        xhr.send();
    }
</script>


</body>
</html>
