package Controller;

import Dao.BlogDao;
import Dao.ProductDao;
import Service.CloudinaryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "UpdateBlogAdmin", value = "/UpdateBlogAdmin")
@MultipartConfig
public class UpdateBlogAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        int idB = Integer.parseInt(id);
        String title = BlogDao.getTitleBlog(idB);
        String meta = BlogDao.getMeta(idB);
        String content = BlogDao.getContent(idB);
        String img = BlogDao.getImg(idB);


        request.setAttribute("idB", idB);
        request.setAttribute("title", title);
        request.setAttribute("meta", meta);
        request.setAttribute("content", content);
        request.setAttribute("img", img);
        request.getRequestDispatcher("AdminWeb/updateBlog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int idB = Integer.parseInt(request.getParameter("idB"));
        String title = request.getParameter("title");
        String meta = request.getParameter("meta");
        String describe = request.getParameter("describe");
//        String image = request.getParameter("image");
        String publicId = "";
        Part filePart = request.getPart("image");
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

            BlogDao.updateBlog(title, meta, describe, imageUrl, idB);

        } else {
            publicId = request.getParameter("image2");
            BlogDao.updateBlog(title, meta, describe, publicId, idB);
        }
//        String publicId = fileName.substring(0, fileName.lastIndexOf("."));


        response.sendRedirect("BlogAdmin");


    }
}
