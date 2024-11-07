package Controller;

import Dao.AboutDao;
import Dao.BlogDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "About", value = "/About")
public class About extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Model.About> abouts = AboutDao.getAbout();

        request.setAttribute("abouts", abouts);
        request.getRequestDispatcher("introduce.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
