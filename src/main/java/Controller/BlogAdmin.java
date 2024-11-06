package Controller;

import Dao.BlogDao;
import Dao.ProductDao;
import Model.Blog;
import Model.Product;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogAdmin", value = "/BlogAdmin")
public class BlogAdmin extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> blogs = BlogDao.getAllBlogAdmin();
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRoleId()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }
        request.setAttribute("blogs", blogs);
        request.getRequestDispatcher("AdminWeb/blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
