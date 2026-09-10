package vn.iotstar.entity;


import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name = "users")
public class User {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;


    @Column(name = "username")
    private String username;


    @Column(name = "email")
    private String email;


    @Column(name = "password")
    private String password;


    @Column(name = "fullname")
    private String fullname;


    @Column(name = "phone")
    private String phone;


    @Column(name = "images")
    private String images;


    @Column(name = "status")
    private Integer status;


    @Column(name = "otp")
    private String otp;


    @Column(name = "createdDate")
    private LocalDateTime createdDate;



    public User() {

    }



    public Integer getId() {
        return id;
    }


    public void setId(Integer id) {
        this.id = id;
    }


    public String getUsername() {
        return username;
    }


    public void setUsername(String username) {
        this.username = username;
    }


    public String getEmail() {
        return email;
    }


    public void setEmail(String email) {
        this.email = email;
    }


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }


    public String getFullname() {
        return fullname;
    }


    public void setFullname(String fullname) {
        this.fullname = fullname;
    }


    public String getPhone() {
        return phone;
    }


    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getImages() {
        return images;
    }


    public void setImages(String images) {
        this.images = images;
    }


    public Integer getStatus() {
        return status;
    }


    public void setStatus(Integer status) {
        this.status = status;
    }


    public String getOtp() {
        return otp;
    }


    public void setOtp(String otp) {
        this.otp = otp;
    }


    public LocalDateTime getCreatedDate() {
        return createdDate;
    }


    public void setCreatedDate(LocalDateTime createdDate) {
        this.createdDate = createdDate;
    }

}