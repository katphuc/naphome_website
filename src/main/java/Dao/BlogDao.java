package Dao;

import DB.DatabaseConnector;
import Model.Blog;
import Model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BlogDao {
    public static boolean addBlog(String title, String meta, String content, String img, int author) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            String getMaxIdSql = "SELECT MAX(id) FROM blog";
            PreparedStatement getMaxIdStmt = connection.prepareStatement(getMaxIdSql);
            ResultSet rs = getMaxIdStmt.executeQuery();

            int newId = 1; // Giá trị mặc định khi không có bản ghi nào
            if (rs.next()) {
                int maxId = rs.getInt(1);
                newId = maxId + 1; // Cộng 1 vào id lớn nhất hiện tại
            }

// Câu truy vấn thêm sản phẩm mới với id mới
            String sql = "INSERT INTO blog (id, title, meta, content, time, img, is_visible, author) "
                    + "VALUES (?,?,?,?, NOW(), ?, 0, ?)";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, newId);
                ps.setString(2, title);
                ps.setString(3, meta);
                ps.setString(4, content);
                ps.setString(5, img);
                ps.setInt(6, author);

                int rowsAffected = ps.executeUpdate();

                // Kiểm tra xem có dòng nào được cập nhật không
                if (rowsAffected > 0) {
                    // Cập nhật thành công
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi hoặc không có dòng nào được cập nhật
        return false;
    }

    public static List<Blog> getAllBlogAdmin() {
        Connection connection = null;
        List<Blog> blogs = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from blog";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Blog blog = new Blog();
                    blog.setId(rs.getInt("id"));
                    blog.setTitle(rs.getString("title"));
                    blog.setMeta(rs.getString("meta"));
                    blog.setContent(rs.getString("content"));
                    blog.setTime(rs.getString("time"));
                    blog.setImg(rs.getString("img"));
                    blog.setIs_visible(rs.getInt("is_visible"));
                    blog.setAuthor(rs.getInt("author"));
                    blogs.add(blog);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }


        return blogs;
    }

    public static boolean hideBlog(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE blog SET is_visible=0 WHERE id=? ";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ps.setInt(1, id);


                int rowsAffected = ps.executeUpdate();

                // Kiểm tra xem có dòng nào được cập nhật không
                if (rowsAffected > 0) {
                    // Cập nhật thành công
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi hoặc không có dòng nào được cập nhật
        return false;
    }

    public static boolean showBlog(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE blog SET is_visible=1 WHERE id=? ";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ps.setInt(1, id);


                int rowsAffected = ps.executeUpdate();

                // Kiểm tra xem có dòng nào được cập nhật không
                if (rowsAffected > 0) {
                    // Cập nhật thành công
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi hoặc không có dòng nào được cập nhật
        return false;
    }

    public static String getTitleBlog(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("select title from blog where id =?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("title");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static String getMeta(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("select meta from blog where id =?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("meta");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static String getContent(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("select content from blog where id =?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("content");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static String getImg(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("select img from blog where id =?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("img");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static boolean updateBlog(String title, String meta, String content,String img, int idBlog) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE blog SET title=?, meta=?, content=?, img=? WHERE id=? ";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ps.setString(1, title);
                ps.setString(2, meta);
                ps.setString(3, content);
                ps.setString(4, img);
                ps.setInt(5, idBlog);


                int rowsAffected = ps.executeUpdate();

                // Kiểm tra xem có dòng nào được cập nhật không
                if (rowsAffected > 0) {
                    // Cập nhật thành công
                    return true;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi hoặc không có dòng nào được cập nhật
        return false;
    }

    public static List<Blog> getAllBlog() {
        Connection connection = null;
        List<Blog> blogs = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from blog where is_visible=1";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Blog blog = new Blog();
                    blog.setId(rs.getInt("id"));
                    blog.setTitle(rs.getString("title"));
                    blog.setMeta(rs.getString("meta"));
                    blog.setContent(rs.getString("content"));
                    blog.setTime(rs.getString("time"));
                    blog.setImg(rs.getString("img"));
                    blog.setIs_visible(rs.getInt("is_visible"));
                    blog.setAuthor(rs.getInt("author"));
                    blogs.add(blog);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }


        return blogs;
    }

    public static List<Blog> getBlogById(int id) {
        Connection connection = null;
        List<Blog> blogs = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from blog where id = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id);
                try (ResultSet rs = statement.executeQuery()) {


                    while (rs.next()) {
                        Blog blog = new Blog();
                        blog.setId(rs.getInt("id"));
                        blog.setTitle(rs.getString("title"));
                        blog.setMeta(rs.getString("meta"));
                        blog.setContent(rs.getString("content"));
                        blog.setTime(rs.getString("time"));
                        blog.setImg(rs.getString("img"));
                        blog.setIs_visible(rs.getInt("is_visible"));
                        blog.setAuthor(rs.getInt("author"));
                        blogs.add(blog);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return blogs;
    }


    public static void main(String[] args) {
//        BlogDao.addBlog("Nhat Thanh","day la meta","day la content","day la img",1);
//        System.out.println(BlogDao.getAllBlogAdmin());;

        System.out.println(getAllBlog());

    }
}
