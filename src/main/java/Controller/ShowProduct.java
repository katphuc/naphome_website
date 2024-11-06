package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShowProduct", value = "/ShowProduct")
public class ShowProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idP = Integer.parseInt(id);
        boolean success = ProductDao.showProduct(idP);

        // Thiết lập loại nội dung JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        // Tạo JSON response
        String jsonResponse = "{\"success\": " + success + "}";
        response.getWriter().write(jsonResponse);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
