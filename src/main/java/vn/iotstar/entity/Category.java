package vn.iotstar.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Column;

@Entity
@Table(name = "categories")
public class Category {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cateId;


    @Column(name = "cate_name")
    private String cateName;


    private String images;


    private Integer status;


    public Category() {
    }


    public Integer getCateId() {
        return cateId;
    }


    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }


    public String getCateName() {
        return cateName;
    }


    public void setCateName(String cateName) {
        this.cateName = cateName;
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

}