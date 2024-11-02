package Dao;



import DB.DatabaseConnector;
import Model.Product;
import Model.User;
import Service.MD5Hash;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.sql.Timestamp;

public class UserDao {

    public static List<User> getAllUser() {
        Connection connection = null;
        List<User> users = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Cập nhật truy vấn SQL để lấy tất cả các cột
            String sql = "SELECT * FROM user";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setEmail(rs.getString("email"));
                    user.setName(rs.getString("name"));
                    user.setRoleId(rs.getInt("role_id")); // Thêm giá trị role_id
                    user.setActivate(rs.getInt("activate"));
                    user.setCreatedAt(rs.getTimestamp("created_at")); // Thêm giá trị created_at
                    user.setUpdatedAt(rs.getTimestamp("updated_at")); // Thêm giá trị updated_at

                    users.add(user);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return users;
    }




    public static boolean registerUser(String name, String username, String password, String email) {
        Connection connection = null;

        try {
            String password_hash = MD5Hash.hashPassword(password);
            connection = DatabaseConnector.getConnection();

            // Thêm cột role_id với giá trị mặc định, activate với giá trị 0
            String sql = "INSERT INTO user (username, password, email, `name`, activate, role_id, created_at, updated_at) " +
                    "VALUES (?, ?, ?, ?, 0, 3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, username);
                ps.setString(2, password_hash);
                ps.setString(3, email);
                ps.setString(4, name);
//                ps.setInt(5, 3); // 3 có thể là mã cho role_id của người dùng thông thường

                int i = ps.executeUpdate();
                return i > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }
    }


    public static boolean addDB(String name, String username, String password, String email) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Cập nhật câu lệnh SQL để thêm giá trị cho `role_id`
            String sql = "INSERT INTO user (username, password, email, `name`, activate, role_id, created_at, updated_at) " +
                    "VALUES (?, ?, ?, ?, ?, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, email);
                ps.setString(4, name);
                ps.setInt(5, 3); // Giả sử role_id = 3 là vai trò mặc định cho người dùng thông thường

                int i = ps.executeUpdate();
                return i > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }
    }


    public static boolean addDB2(String name, String username, String password, String email, int roleId) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Cập nhật câu lệnh SQL để thêm giá trị cho `role_id`
            String sql = "INSERT INTO user (username, password, email, `name`, activate, role_id, created_at, updated_at) " +
                    "VALUES (?, ?, ?, ?, ?, 1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, username);
                ps.setString(2, password);
                ps.setString(3, email);
                ps.setString(4, name);
                ps.setInt(5, roleId); // Sử dụng `roleId` thay vì `role`

                int i = ps.executeUpdate();
                return i > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }
    }



    public static boolean loginUser(String username, String password) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Hash mật khẩu trước khi so sánh với cơ sở dữ liệu
            String hashedPassword = MD5Hash.hashPassword(password);

            PreparedStatement ps = connection.prepareStatement("SELECT * FROM user WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, hashedPassword);

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch (SQLException e) {
            e.printStackTrace();
            return false;

        } finally {
            DatabaseConnector.closeConnection(connection);
        }
    }

    public static int getNewIDUser() {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT id FROM user order by id desc limit 1");


            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("id");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return 0;
    }

    public static String getUserName(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT name FROM user WHERE username=?");
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("name");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }



    public static int getiduser(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT id FROM user WHERE username=?");
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("id");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return 0; // Trả về null nếu không tìm thấy
    }

    public static String getPasswd(int iduser) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT password FROM user WHERE id=?");
            ps.setInt(1, iduser);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("password");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static String getEmail(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT email FROM user WHERE username=?");
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("email");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static boolean updateActivateAccount(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE user SET activate=1 WHERE username=?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ps.setString(1, username);

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

    public static int getNotActivateAccount(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT activate FROM user WHERE username=?");
            ps.setString(1, username);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("activate");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return 3; // Trả về null nếu không tìm thấy
    }

    public static boolean isUsernameExists(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT COUNT(*) AS count FROM user WHERE username=?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, username);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    int count = rs.getInt("count");

                    // Nếu count > 0, username đã tồn tại
                    return count > 0;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return false;
    }

    public static User getUserInfo(String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * FROM user WHERE username=?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, username);

                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    User user = new User();
                    user.setId(rs.getInt("id"));
                    user.setUsername(rs.getString("username"));
                    user.setPassword(rs.getString("password"));
                    user.setEmail(rs.getString("email"));
                    user.setName(rs.getString("name"));
                    user.setActivate(rs.getInt("activate"));
                    user.setRoleId(rs.getInt("role_id")); // Thay `role` bằng `role_id`
                    user.setCreatedAt(rs.getTimestamp("created_at")); // Lấy cột `created_at`
                    user.setUpdatedAt(rs.getTimestamp("updated_at")); // Lấy cột `updated_at`
                    return user;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi hoặc không tìm thấy, trả về null
        return null;
    }


    public static boolean changePassword(String password ,int iduser) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE user SET password=? WHERE id=?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, password);
                ps.setInt(2, iduser);

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

    public static boolean changePassword(String password ,String username) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE user SET password=? WHERE username=?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setString(1, password);
                ps.setString(2, username);

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
        return false;
    }

    public static boolean updateInfoUser(String name, String email, int iduser) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "UPDATE user SET `name`=?, email=? WHERE id=?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setInt(3, iduser);


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

    public static int getNewiduserAdmin() {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT max(id) +1 as new_id FROM user");


            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("new_id");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return 0;
    }

    public static boolean RemoveUser(int iduser) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "delete from user where id =?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1,iduser);


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
    public static boolean hasPermission(int userId, int permissionId) {
        Connection connection = null;
        try {
            connection = DatabaseConnector.getConnection();
            String sql = "SELECT * FROM user_permission WHERE user_id = ? AND permission_id = ?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                ps.setInt(1, userId);
                ps.setInt(2, permissionId);

                ResultSet rs = ps.executeQuery();
                return rs.next(); // Trả về true nếu tìm thấy quyền truy cập
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DatabaseConnector.closeConnection(connection);
        }
        return false; // Trả về false nếu không tìm thấy quyền truy cập
    }

    public static void main(String[] args) {
        System.out.println(getNewiduserAdmin());
    }













}

