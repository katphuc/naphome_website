package Controller;

import Dao.BlogDao;
import Dao.ProductDao;
import Model.Blog;
import Model.User;
import Model.Vendor;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "VendorAdmin", value = "/VendorAdmin")
public class VendorAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Vendor> vendors = ProductDao.getAllVendor();
        User user = (User) request.getSession().getAttribute("user");
        if(user==null || user.getRoleId()==2){
            response.sendRedirect("errorAccess.jsp");
            return;
        }
        request.setAttribute("vendors", vendors);
        request.getRequestDispatcher("AdminWeb/vendor.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
