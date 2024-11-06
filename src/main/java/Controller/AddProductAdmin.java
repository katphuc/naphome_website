package Controller;

import Dao.ProductDao;
import Service.CloudinaryService;
import com.cloudinary.Cloudinary;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

@WebServlet(name = "AddProductAdmin", value = "/AddProductAdmin")
@MultipartConfig
public class AddProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int newID = ProductDao.getnewId();

        request.setAttribute("id", newID);
        request.getRequestDispatcher("AdminWeb/addProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int newID = ProductDao.getnewId();
        int idP = Integer.parseInt(request.getParameter("idP"));
        String name = request.getParameter("name");
        int id_type = Integer.parseInt(request.getParameter("type"));
//        int price = Integer.parseInt(request.getParameter("price"));
//        int discount = Integer.parseInt(request.getParameter("discount"));
//        String image = request.getParameter("image");

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




        String describe = request.getParameter("describe");
//        int import_price = Integer.parseInt(request.getParameter("import_price"));
//        int amount = Integer.parseInt(request.getParameter("amount"));
        int vendor = Integer.parseInt(request.getParameter("vendor"));
        ProductDao.addProduct(id_type,name,0,0,describe,100,100,vendor,0);
//        ProductDao.addIMGProduct(image,newID);
        ProductDao.addIMGProduct(imageUrl,newID);

        response.sendRedirect("ProductAdmin");
    }
}
