package Controller;

import Dao.ProductDao;
import Service.CloudinaryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;

@WebServlet(name = "UpdateProductAdmin", value = "/UpdateProductAdmin")
@MultipartConfig
public class UpdateProductAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        int idP = Integer.parseInt(id);
        int id_type = ProductDao.getIdType(idP);
        String name = ProductDao.getNameProduct(idP);
        int discount = ProductDao.getDiscount(idP);
        int price = ProductDao.getPrice(idP);
        String describe = ProductDao.getDescribe(idP);
        int idVendor = ProductDao.getID_vendor(idP);



        request.setAttribute("idP", idP);
        request.setAttribute("id_type", id_type);
        request.setAttribute("name", name);
        request.setAttribute("discount", discount);
        request.setAttribute("price", price);
        request.setAttribute("describe", describe);
        request.setAttribute("idVendor", idVendor);
        request.getRequestDispatcher("AdminWeb/updateProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int idP = Integer.parseInt(request.getParameter("idP"));
        String name = request.getParameter("name");
         int id_type = Integer.parseInt(request.getParameter("type"));
        int price = Integer.parseInt(request.getParameter("price"));
        int discount = Integer.parseInt(request.getParameter("discount"));

//        String image = request.getParameter("image");
        String publicId ="";
        Part filePart = request.getPart("image");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Chỉ lấy tên tệp
        if(!fileName.equals("")){
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

            ProductDao.updateIMGProduct(imageUrl,idP);

        }else {
            publicId = request.getParameter("image2");
            ProductDao.updateIMGProduct(publicId,idP);
        }
//        String publicId = fileName.substring(0, fileName.lastIndexOf("."));


        String describe = request.getParameter("describe");
        ProductDao.updateProduct(id_type,name,discount,price,describe,idP);


        response.sendRedirect("ProductAdmin");





    }
}
