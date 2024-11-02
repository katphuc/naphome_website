package Controller;

import Dao.ProductDao;
import Model.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FilterAdvance", value = "/FilterAdvance")
public class FilterAdvance extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String vendorIdsParam = request.getParameter("vendorIds");
        List<Integer> vendorIds = new ArrayList<>();

        // Chuyển vendorIds từ chuỗi thành List<Integer>
        if (vendorIdsParam != null && !vendorIdsParam.isEmpty()) {
            for (String id : vendorIdsParam.split(",")) {
                vendorIds.add(Integer.parseInt(id));
            }
        }
        System.out.println(vendorIds);
        // Truy xuất sản phẩm từ các vendor đã chọn
        List<Model.Product> filteredProducts = ProductDao.getProductsByVendorIds(vendorIds);
        request.setAttribute("products", filteredProducts);


            // Trả về danh sách sản phẩm đã lọc
            request.getRequestDispatcher("productFilter.jsp").forward(request, response);
    }
}
