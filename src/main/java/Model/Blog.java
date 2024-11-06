package Model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Blog {
    private int id;
    private String title;
    private String meta;
    private String content;
    private String time;
    private String img;
    private int is_visible;
    private int author;

    public Blog() {
    }

    public Blog(int id, String title, String meta, String content, String time, String img, int is_visible, int author) {
        this.id = id;
        this.title = title;
        this.meta = meta;
        this.content = content;
        this.time = time;
        this.img = img;
        this.is_visible = is_visible;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMeta() {
        return meta;
    }

    public void setMeta(String meta) {
        this.meta = meta;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getIs_visible() {
        return is_visible;
    }

    public void setIs_visible(int is_visible) {
        this.is_visible = is_visible;
    }

    public int getAuthor() {
        return author;
    }

    public void setAuthor(int author) {
        this.author = author;
    }

    public String formatBlogTime(String blogsTime) {
        // Định nghĩa định dạng đầu vào và đầu ra
        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat outputFormat = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");

        String formattedDate = "";
        try {
            // Chuyển đổi chuỗi thành đối tượng Date
            Date date = inputFormat.parse(blogsTime);
            // Định dạng lại thành chuỗi theo định dạng mong muốn
            formattedDate = outputFormat.format(date);
        } catch (ParseException e) {
            e.printStackTrace();
            formattedDate = "Invalid Date"; // Trả về thông báo lỗi nếu định dạng không hợp lệ
        }

        return formattedDate;
    }
}
