package Controller;

import Dao.ProductDao;
import Dao.UserDao;
import Model.Product;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserAdmin", value = "/UserAdmin")
public class UserAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = UserDao.getAllUser();
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRoleId()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }

        request.setAttribute("user", users);
        request.getRequestDispatcher("AdminWeb/user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
