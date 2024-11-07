<%@ page import="Model.Product" %>
<%@ page import="Dao.ProductDao" %>
<%@ page import="Model.TypeProduct" %>
<%@ page import="java.util.List" %>
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
        <div class="manager-product">
            <div class="title">Chỉnh sửa thông tin loại sản phẩm</div>
            <form id="myForm" action="UpdateType" method="post" class="row">
                <%
                    int id = (int) request.getAttribute("id");
                    String type = (String) request.getAttribute("type");
                    int parent_id = (int) request.getAttribute("parent_id");
                    String name_parent =  ProductDao.getNameType(parent_id);;
                    if(name_parent==null){
                        name_parent="-----------------";
                    }



                %>
                <div class="form-group col-md-3">
                    <label class="control-label">Mã loại sản phẩm</label>
                    <input name="id" class="form-control" type="number" value="<%= id %>" readonly>
                </div>

                <div class="form-group col-md-3">
                    <label class="control-label">Tên loại sản phẩm</label>
                    <input name="type" class="form-control" type="text" value="<%= type %>">
                </div>

                <div class="form-group col-md-3">
                    <label class="control-label">Danh mục cha</label>
                    <select name="parent-type" class="form-control"  >
                        <option value="<%=  parent_id %>"> <%=  name_parent %></option>
                        <%
                            List<TypeProduct> typeProducts = (List<TypeProduct>) session.getAttribute("typeProducts");
                            boolean isNameParentDisplayed = false; // Biến theo dõi xem name_parent đã được hiển thị chưa
                            for (TypeProduct typeproduct : typeProducts) {
                                // Kiểm tra nếu name_parent trùng với typeproduct.getName()
                                if (typeproduct.getName().equals(name_parent)) {
                                    if (!isNameParentDisplayed) {
                                        // Nếu chưa hiển thị, đặt flag và bỏ qua
                                        isNameParentDisplayed = true; // Đánh dấu là đã hiển thị name_parent
                                        continue; // Bỏ qua phần này
                                    }
                                }
                                // Hiển thị tùy chọn nếu không phải là name_parent
                        %>
                        <option value="<%= typeproduct.getId() %>"> <%= typeproduct.getName() %> </option>
                        <%
                            }
                        %>
                    </select>
                </div>

                <%--                <div class="form-group  col-md-3">--%>
                <%--                    <label class="control-label">Số lượng</label>--%>
                <%--                    <input class="form-control" type="number">--%>
                <%--                </div>--%>


            </form>
            <button id="externalButton" class="btn btn-save" type="button">Lưu lại</button>
            <a class="btn btn-cancel" href="TypeAdmin">Hủy bỏ</a>
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
</body>
</html>
