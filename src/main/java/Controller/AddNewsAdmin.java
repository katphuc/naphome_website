package Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddNewsAdmin", value = "/AddNewsAdmin")
public class AddNewsAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Điều hướng tới trang add-news.jsp
        request.getRequestDispatcher("AdminWeb/addNews.jsp").forward(request, response);
    }
}
