package Controller;

import Dao.ProductDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateVendor", value = "/UpdateVendor")
public class UpdateVendor extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        int idd = Integer.parseInt(id);

        String name = ProductDao.getNameVendor(idd);



        request.setAttribute("id", idd);
        request.setAttribute("name", name);
        request.getRequestDispatcher("AdminWeb/updateVendor.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String name = request.getParameter("name");

        ProductDao.updateVendor(name, Integer.parseInt(id));
        response.sendRedirect("VendorAdmin");



    }
}
