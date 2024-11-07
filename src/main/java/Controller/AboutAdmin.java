package Controller;

import Dao.AboutDao;
import Dao.BlogDao;
import Model.About;
import Model.Blog;
import Model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AboutAdmin", value = "/AboutAdmin")
@MultipartConfig
public class AboutAdmin extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<About> abouts = AboutDao.getAbout();
        String title1 = AboutDao.getTitle1(1);
        String content1 = AboutDao.getContent1(1);
        String title2 = AboutDao.getTitle2(1);
        String content2 = AboutDao.getContent2(1);
        String img2 = AboutDao.getImg2(1);
        String title3 = AboutDao.getTitle3(1);
        String content3 = AboutDao.getContent3(1);
        String img3 = AboutDao.getImg3(1);
        request.setAttribute("title1", title1);
        request.setAttribute("content1", content1);
        request.setAttribute("title2", title2);
        request.setAttribute("content2", content2);
        request.setAttribute("img2", img2);
        request.setAttribute("title3", title3);
        request.setAttribute("content3", content3);
        request.setAttribute("img3", img3);
        request.getRequestDispatcher("AdminWeb/about.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
