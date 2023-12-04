package Model;

import Dao.ProductDao;

public class Product {
    private int id;
    private int id_type;
    private String name;
    private int discount;
    private double price;
    private String describe;
    private int status;
    private int amount_shop;
    private int amount_storage;
    private int id_vendor;

    public Product() {
    }

    public Product(int id, int id_type, String name, int discount, double price, String describe, int status, int amount_shop, int amount_storage, int id_vendor) {
        this.id = id;
        this.id_type = id_type;
        this.name = name;
        this.discount = discount;
        this.price = price;
        this.describe = describe;
        this.status = status;
        this.amount_shop = amount_shop;
        this.amount_storage = amount_storage;
        this.id_vendor = id_vendor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_type() {
        return id_type;
    }

    public void setId_type(int id_type) {
        this.id_type = id_type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getAmount_shop() {
        return amount_shop;
    }

    public void setAmount_shop(int amount_shop) {
        this.amount_shop = amount_shop;
    }

    public int getAmount_storage() {
        return amount_storage;
    }

    public void setAmount_storage(int amount_storage) {
        this.amount_storage = amount_storage;
    }

    public int getId_vendor() {
        return id_vendor;
    }

    public void setId_vendor(int id_vendor) {
        this.id_vendor = id_vendor;
    }

    public String getImageUrl() {
        return ProductDao.getImageUrl(id);
    }
}
