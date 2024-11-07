package Model;

public class About {
    private int id;
    private String title_first;
    private String content_first;
    private String title_second;
    private String content_second;
    private String img_second;
    private String title_third;
    private String content_third;
    private String img_third;

    public About(int id, String title_first, String content_first, String title_second, String content_second, String img_second, String title_third, String content_third, String img_third) {
        this.id = id;
        this.title_first = title_first;
        this.content_first = content_first;
        this.title_second = title_second;
        this.content_second = content_second;
        this.img_second = img_second;
        this.title_third = title_third;
        this.content_third = content_third;
        this.img_third = img_third;
    }

    public About() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent_first() {
        return content_first;
    }

    public void setContent_first(String content_first) {
        this.content_first = content_first;
    }

    public String getTitle_first() {
        return title_first;
    }

    public void setTitle_first(String title_first) {
        this.title_first = title_first;
    }

    public String getTitle_second() {
        return title_second;
    }

    public void setTitle_second(String title_second) {
        this.title_second = title_second;
    }

    public String getContent_second() {
        return content_second;
    }

    public void setContent_second(String content_second) {
        this.content_second = content_second;
    }

    public String getTitle_third() {
        return title_third;
    }

    public void setTitle_third(String title_third) {
        this.title_third = title_third;
    }

    public String getImg_second() {
        return img_second;
    }

    public void setImg_second(String img_second) {
        this.img_second = img_second;
    }

    public String getContent_third() {
        return content_third;
    }

    public void setContent_third(String content_third) {
        this.content_third = content_third;
    }

    public String getImg_third() {
        return img_third;
    }

    public void setImg_third(String img_third) {
        this.img_third = img_third;
    }
}
