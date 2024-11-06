package Controller;

import Dao.BlogDao;
import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "HideBlog", value = "/HideBlog")
public class HideBlog extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        int idB = Integer.parseInt(id);
        boolean success = BlogDao.hideBlog(idB);

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
