package Controller;

import Dao.BlogDao;
import Dao.ProductDao;
import Model.User;
import Service.CloudinaryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "AddNewsAdmin", value = "/AddNewsAdmin")
@MultipartConfig
public class AddNewsAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Điều hướng tới trang add-news.jsp
        request.getRequestDispatcher("AdminWeb/addNews.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String title = request.getParameter("title");
        String meta = request.getParameter("meta");
        String content = request.getParameter("describe");

        // Lấy phần tệp hình ảnh từ yêu cầu
        Part filePart = request.getPart("image"); // "image" là tên của input file

        // Lấy tên tệp đã tải lên
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Chỉ lấy tên tệp
        String publicId = fileName.substring(0, fileName.lastIndexOf("."));
        String tempDir = System.getProperty("java.io.tmpdir"); // Thư mục tạm thời của hệ thống
        File tempFile = new File(tempDir, fileName); // Tạo tệp tạm thời

        // Ghi tệp lên đĩa
        filePart.write(tempFile.getAbsolutePath());

        CloudinaryService cloudinaryService = new CloudinaryService();
        String imageUrl = cloudinaryService.uploadImage(tempFile, publicId);

        // Trả về URL của hình ảnh đã tải lên
        response.getWriter().println("Image uploaded successfully! URL: " + imageUrl);

        // Xóa tệp tạm thời sau khi sử dụng
        tempFile.delete();

        User user = (User) request.getSession().getAttribute("user");
        int userId = user.getId();

        BlogDao.addBlog(title,meta,content,imageUrl,userId);
        response.sendRedirect("BlogAdmin");
    }
}
