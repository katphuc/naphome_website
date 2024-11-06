package Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.Properties;

public class EmailSender {

    // Thông tin cấu hình email
    private static final String EMAIL_USERNAME = "20130404@st.hcmuaf.edu.vn";
    private static final String EMAIL_PASSWORD = "ydqn omkd krxq zwnj";

    // Phương thức gửi email
    public static void sendEmail(String toEmail, String subject, String body) {
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // Tạo phiên làm việc để xác thực người gửi email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
            }
        });

        try {
            // Tạo một đối tượng MimeMessage
            Message message = new MimeMessage(session);

            // Đặt thông tin người gửi, người nhận, chủ đề và nội dung email
            message.setFrom(new InternetAddress(EMAIL_USERNAME));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject(MimeUtility.encodeText(subject, "UTF-8", "B"));
            // Sử dụng setContent để gửi email HTML
            message.setContent(new String(body.getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8), "text/html; charset=UTF-8");

            // Gửi email
            Transport.send(message);


            System.out.println("Email sent successfully to: " + toEmail);
        } catch (MessagingException e) {
            e.printStackTrace();
            System.err.println("Error sending email to: " + toEmail);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static void main(String[] args) {
        // Thông tin email của người nhận
        String toEmail = "vuutruongnhatthanh@gmail.com";

        // Chủ đề và nội dung email
        String subject = "Test";
        String body = "This is a test email from EmailSenderTest.";

        // Gửi email
        EmailSender.sendEmail(toEmail, subject, body);
    }
}

