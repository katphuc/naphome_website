package Controller;

import Dao.InfoDeliverDao;
import Dao.UserDao;
import Service.EmailSender;
import Service.OTPGenerator;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");

        // Lấy dữ liệu từ form
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String confirmPassword = request.getParameter("confirmPassword");

        // Kiểm tra dữ liệu đầu vào
        StringBuilder errorMessage = new StringBuilder();

        // Kiểm tra tên
        if (name == null || name.trim().isEmpty()) {
            errorMessage.append("Tên của bạn không được để trống.<br>");
        }

        // Kiểm tra tên đăng nhập
        if (username == null || username.trim().isEmpty()) {
            errorMessage.append("Tên đăng nhập không được để trống.<br>");
        } else if (UserDao.isUsernameExists(username)) {
            errorMessage.append("Tên đăng nhập đã được sử dụng.<br>");
        }

        // Kiểm tra email
        if (email == null || email.trim().isEmpty() || !email.contains("@")) {
            errorMessage.append("Email không hợp lệ.<br>");
        } else if (UserDao.isEmailExists(email)) {
            errorMessage.append("Email đã được sử dụng.<br>");
        }

        // Kiểm tra mật khẩu
        if (password == null || password.length() < 6) {
            errorMessage.append("Mật khẩu phải có ít nhất 6 ký tự.<br>");
        }

        // Kiểm tra xác nhận mật khẩu
        if (confirmPassword == null || !confirmPassword.equals(password)) {
            errorMessage.append("Mật khẩu nhập lại không trùng khớp.<br>");
        }

        // Nếu có lỗi, gửi thông báo trở lại trang đăng ký
        if (errorMessage.length() > 0) {
            request.getSession().setAttribute("message", errorMessage.toString());
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
            return; // Kết thúc phương thức
        }

        // Nếu không có lỗi, tiến hành đăng ký
        boolean registrationSuccess = UserDao.registerUser(name, username, password, email);
        int userid = UserDao.getiduser(username);
        InfoDeliverDao.addInfoDeliver(userid);

        if (registrationSuccess) {
            String otp = OTPGenerator.generateOTP();
            EmailSender.sendEmail(email, "OTP", "Mã OTP: " + otp);
            request.getSession().setAttribute("otp", otp);
            request.getSession().setAttribute("username", username);
            response.sendRedirect("enterOTP.jsp");
        } else {
            request.getSession().setAttribute("message", "Lỗi không xác định");
            RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
            dispatcher.forward(request, response);
        }
    }
}
