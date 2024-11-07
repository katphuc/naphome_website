package Controller;

import Dao.AboutDao;
import Dao.BlogDao;
import Service.CloudinaryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "UpdateAbout", value = "/UpdateAbout")
@MultipartConfig
public class UpdateAbout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String title1 = request.getParameter("title1");
        String content1 = request.getParameter("content1");
        String title2 = request.getParameter("title2");
        String content2 = request.getParameter("content2");
        String img2 = "";
        String publicId = "";
        Part filePart = request.getPart("image2");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Chỉ lấy tên tệp
        if (!fileName.equals("")) {
            publicId = fileName.substring(0, fileName.lastIndexOf("."));

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

            img2 = imageUrl;

        } else {
            img2 = request.getParameter("image2-old");

        }
        String title3 = request.getParameter("title3");
        String content3 = request.getParameter("content3");
        String img3 = "";
        String publicId3 = "";
        Part filePart3 = request.getPart("image3");
        String fileName3 = Paths.get(filePart3.getSubmittedFileName()).getFileName().toString(); // Chỉ lấy tên tệp
        if (!fileName3.equals("")) {
            publicId3 = fileName3.substring(0, fileName3.lastIndexOf("."));

            String tempDir = System.getProperty("java.io.tmpdir"); // Thư mục tạm thời của hệ thống
            File tempFile = new File(tempDir, fileName3); // Tạo tệp tạm thời

            // Ghi tệp lên đĩa
            filePart3.write(tempFile.getAbsolutePath());

            CloudinaryService cloudinaryService = new CloudinaryService();
            String imageUrl = cloudinaryService.uploadImage(tempFile, publicId3);

            // Trả về URL của hình ảnh đã tải lên
            response.getWriter().println("Image uploaded successfully! URL: " + imageUrl);

            // Xóa tệp tạm thời sau khi sử dụng
            tempFile.delete();

            img3 = imageUrl;

        } else {
            img3 = request.getParameter("image3-old");
        }

        AboutDao.updateAbout(title1, content1, title2, content2, img2, title3, content3, img3, 1);

        response.sendRedirect("AboutAdmin");


    }
}
