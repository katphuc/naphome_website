package Dao;

import DB.DatabaseConnector;
import Model.Product;
import Model.TypeProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    public static List<Product> getAllProduct() {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setId_type(rs.getInt("id_type"));
                    product.setName(rs.getString("name"));
                    product.setDiscount(rs.getInt("discount"));
                    product.setPrice(rs.getDouble("price"));
                    product.setDescribe(rs.getString("describe"));
                    product.setStatus((rs.getInt("status")));
                    product.setAmount_shop(rs.getInt("amount_shop"));
                    product.setAmount_storage(rs.getInt("amount_storage"));
                    product.setId_vendor(rs.getInt("id_vendor"));
                    product.setDate(rs.getString("date"));
                    products.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }


        return products;
    }

    public static List<Product> getDiscountProduct() {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where discount !=0 limit 8";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setId_type(rs.getInt("id_type"));
                    product.setName(rs.getString("name"));
                    product.setDiscount(rs.getInt("discount"));
                    product.setPrice(rs.getDouble("price"));
                    product.setDescribe(rs.getString("describe"));
                    product.setStatus((rs.getInt("status")));
                    product.setAmount_shop(rs.getInt("amount_shop"));
                    product.setAmount_storage(rs.getInt("amount_storage"));
                    product.setId_vendor(rs.getInt("id_vendor"));
                    product.setDate(rs.getString("date"));
                    products.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return products;
    }

    public static List<Product> getNewProduct() {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where date >= DATE_SUB(CURRENT_DATE, INTERVAL 1 MONTH) ORDER BY date DESC limit 8";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setId_type(rs.getInt("id_type"));
                    product.setName(rs.getString("name"));
                    product.setDiscount(rs.getInt("discount"));
                    product.setPrice(rs.getDouble("price"));
                    product.setDescribe(rs.getString("describe"));
                    product.setStatus((rs.getInt("status")));
                    product.setAmount_shop(rs.getInt("amount_shop"));
                    product.setAmount_storage(rs.getInt("amount_storage"));
                    product.setId_vendor(rs.getInt("id_vendor"));
                    product.setDate(rs.getString("date"));
                    products.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return products;
    }



    public static List<Product> getAllDiscountProduct() {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where discount !=0";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setId_type(rs.getInt("id_type"));
                    product.setName(rs.getString("name"));
                    product.setDiscount(rs.getInt("discount"));
                    product.setPrice(rs.getDouble("price"));
                    product.setDescribe(rs.getString("describe"));
                    product.setStatus((rs.getInt("status")));
                    product.setAmount_shop(rs.getInt("amount_shop"));
                    product.setAmount_storage(rs.getInt("amount_storage"));
                    product.setId_vendor(rs.getInt("id_vendor"));
                    product.setDate(rs.getString("date"));
                    products.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return products;
    }

    public static List<Product> getProductByCategory(int id_type) {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where id_type = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id_type);
                try (ResultSet rs = statement.executeQuery()) {




                    while (rs.next()) {
                        Product product = new Product();
                        product.setId(rs.getInt("id"));
                        product.setId_type(rs.getInt("id_type"));
                        product.setName(rs.getString("name"));
                        product.setDiscount(rs.getInt("discount"));
                        product.setPrice(rs.getDouble("price"));
                        product.setDescribe(rs.getString("describe"));
                        product.setStatus((rs.getInt("status")));
                        product.setAmount_shop(rs.getInt("amount_shop"));
                        product.setAmount_storage(rs.getInt("amount_storage"));
                        product.setId_vendor(rs.getInt("id_vendor"));
                        product.setDate(rs.getString("date"));
                        products.add(product);
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
            return products;
        }

    public static List<Product> getProductByid(int id) {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where id = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, id);
                try (ResultSet rs = statement.executeQuery()) {




                    while (rs.next()) {
                        Product product = new Product();
                        product.setId(rs.getInt("id"));
                        product.setId_type(rs.getInt("id_type"));
                        product.setName(rs.getString("name"));
                        product.setDiscount(rs.getInt("discount"));
                        product.setPrice(rs.getDouble("price"));
                        product.setDescribe(rs.getString("describe"));
                        product.setStatus((rs.getInt("status")));
                        product.setAmount_shop(rs.getInt("amount_shop"));
                        product.setAmount_storage(rs.getInt("amount_storage"));
                        product.setId_vendor(rs.getInt("id_vendor"));
                        product.setDate(rs.getString("date"));
                        products.add(product);
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
        return products;
    }

    public static List<Product> SearchProduct(String searchTerm) {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where name like ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, "%" + searchTerm + "%");
                try (ResultSet rs = statement.executeQuery()) {




                    while (rs.next()) {
                        Product product = new Product();
                        product.setId(rs.getInt("id"));
                        product.setId_type(rs.getInt("id_type"));
                        product.setName(rs.getString("name"));
                        product.setDiscount(rs.getInt("discount"));
                        product.setPrice(rs.getDouble("price"));
                        product.setDescribe(rs.getString("describe"));
                        product.setStatus((rs.getInt("status")));
                        product.setAmount_shop(rs.getInt("amount_shop"));
                        product.setAmount_storage(rs.getInt("amount_storage"));
                        product.setId_vendor(rs.getInt("id_vendor"));
                        product.setDate(rs.getString("date"));
                        products.add(product);
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
        return products;
    }

    public static List<Product> FilterProduct(String sortingOption) {
        Connection connection = null;
        List<Product> products = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "";
            switch (sortingOption) {
                case "lowtohigh":
                    sql = "SELECT * FROM products ORDER BY price ASC";
                    break;
                case "hightolow":
                    sql = "SELECT * FROM products ORDER BY price DESC";
                    break;
                case "atoz":
                    sql = "SELECT * FROM products ORDER BY name ASC";
                    break;
                case "ztoa":
                    sql = "SELECT * FROM products ORDER BY name DESC";
                    break;
            }
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setId_type(rs.getInt("id_type"));
                    product.setName(rs.getString("name"));
                    product.setDiscount(rs.getInt("discount"));
                    product.setPrice(rs.getDouble("price"));
                    product.setDescribe(rs.getString("describe"));
                    product.setStatus((rs.getInt("status")));
                    product.setAmount_shop(rs.getInt("amount_shop"));
                    product.setAmount_storage(rs.getInt("amount_storage"));
                    product.setId_vendor(rs.getInt("id_vendor"));
                    product.setDate(rs.getString("date"));
                    products.add(product);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return products;
    }






    public static List<TypeProduct> getAllType() {
        Connection connection = null;
        List<TypeProduct> typeProducts = new ArrayList<>();
        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from type_product";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {


                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    TypeProduct typeProduct = new TypeProduct();
                    typeProduct.setId(rs.getInt("id"));
                    typeProduct.setName(rs.getString("name"));

                    typeProducts.add(typeProduct);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return typeProducts;
    }

    public static Product getProductById(int productID) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            // Sử dụng PreparedStatement để tránh SQL injection
            String sql = "SELECT * from products where id =?";
            try (PreparedStatement ps = connection.prepareStatement(sql)) {
                    ps.setInt(1,productID);

                ResultSet rs = ps.executeQuery();

                while (rs.next()) {
                    Product product = new Product();
                    product.setId(rs.getInt("id"));
                    product.setId_type(rs.getInt("id_type"));
                    product.setName(rs.getString("name"));
                    product.setDiscount(rs.getInt("discount"));
                    product.setPrice(rs.getDouble("price"));
                    product.setDescribe(rs.getString("describe"));
                    product.setStatus((rs.getInt("status")));
                    product.setAmount_shop(rs.getInt("amount_shop"));
                    product.setAmount_storage(rs.getInt("amount_storage"));
                    product.setId_vendor(rs.getInt("id_vendor"));
                    product.setDate(rs.getString("date"));
                    return product;

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        // Nếu có lỗi, giả sử username không tồn tại
        return null;
    }



    private static void testGetAllProduct() {
        List<Product> products = ProductDao.getProductByid(1);

        // Kiểm tra xem danh sách sản phẩm có rỗng hay không
        if (products != null) {
            System.out.println("Danh sách sản phẩm:");
            for (Product product : products) {
                System.out.println(product);
            }
        } else {
            System.out.println("Có lỗi xảy ra khi lấy danh sách sản phẩm.");
        }
    }

    private static void testGetAllTypeProduct() {
        List<TypeProduct> products = ProductDao.getAllType();

        // Kiểm tra xem danh sách sản phẩm có rỗng hay không
        if (products != null) {
            System.out.println("Danh sách sản phẩm:");
            for (TypeProduct product : products) {
                System.out.println(product);
            }
        } else {
            System.out.println("Có lỗi xảy ra khi lấy danh sách sản phẩm.");
        }
    }

    public static String getImageUrl(int id) {
        Connection connection = null;

        try {
            connection = DatabaseConnector.getConnection();

            PreparedStatement ps = connection.prepareStatement("SELECT images.url FROM images join products on images.id_product = products.id WHERE products.id=?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getString("url");
            }

        } catch (SQLException e) {
            e.printStackTrace();

        } finally {
            DatabaseConnector.closeConnection(connection);
        }

        return null; // Trả về null nếu không tìm thấy
    }

    public static void main(String[] args) {
        testGetAllProduct();
    }

}
