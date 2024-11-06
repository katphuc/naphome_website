package Controller;
import Dao.ProductDao;
import Model.*;
import Service.EmailSender;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "ContactCPN", value = "/ContactCPN")
public class ContactCPN extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String[] productNames = request.getParameterValues("productName");
        String[] quantities = request.getParameterValues("quantity");
        String[] imageUrls = request.getParameterValues("imageUrl");

        // Kiểm tra xem có dữ liệu không
        if (productNames != null && quantities != null && imageUrls != null) {
            StringBuilder body = new StringBuilder();
            body.append("<html><body>");
            body.append("<h1>Thông tin liên hệ</h1>");
            body.append("<p>Số điện thoại: ").append(phone).append("</p>");
            body.append("<p>Email: ").append(email).append("</p>");
            body.append("<h1>Danh sách sản phẩm</h1>");

            for (int i = 0; i < productNames.length; i++) {
                body.append("<p>");
                body.append("Sản phẩm: ").append(productNames[i]).append("<br>");
                body.append("Số lượng: ").append(quantities[i]).append("<br>");
                body.append("<img src='").append(imageUrls[i]).append("' alt='").append(productNames[i]).append("' style='width:100px;height:auto;'><br>");
                body.append("</p>");
            }

            body.append("</body></html>");

            // Gửi email
            String toEmail = "vuutruongnhatthanh@gmail.com"; // Thay bằng email thực tế
            String subject = "Thông tin liên hệ và sản phẩm";
            EmailSender.sendEmail(toEmail, subject, body.toString());
            request.getSession().removeAttribute("cart");
            request.getSession().removeAttribute("item");
        } else {
            System.out.println("Không có sản phẩm nào được gửi.");
        }

        response.sendRedirect("Home"); // Điều hướng hoặc phản hồi lại cho người dùng
    }
}
