package Model;

import Dao.InfoDeliverDao;
import java.sql.Timestamp;

public class User {
    private int id;
    private String username;
    private String password;
    private String email;
    private String name;
    private int activate;
    private int roleId;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public User() {
    }

    public User(int id, String username, String password, String email, String name, int roleId, int activate) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
        this.roleId = roleId;
        this.activate = activate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }
    public String getNameRole() {
        if(roleId==0){
            return "Admin";
        }
        if(roleId==1) {
            return "Moderator";
        }
        if(roleId==2) {
            return "User";
        }
        return null;

    }

    public String getNameActivate() {
        if(activate==0){
            return "Chưa kích hoạt";
        }
        if(activate==1) {
            return "Đã kích hoạt";
        }

        return null;

    }

    public void setRole(int role) {
        this.roleId = role;
    }

    public int getActivate() {
        return activate;
    }

    public void setActivate(int activate) {
        this.activate = activate;
    }

    public String getPhone(){
     return InfoDeliverDao.getPhone(id);
    }

    public String getProvince(){
        return InfoDeliverDao.getProvince(id);
    }

    public String getDistrict(){
        return InfoDeliverDao.getDistrict(id);
    }

    public String getWard(){
        return InfoDeliverDao.getWard(id);
    }

    public String getAddress(){
        return InfoDeliverDao.getAddress(id);
    }
}
