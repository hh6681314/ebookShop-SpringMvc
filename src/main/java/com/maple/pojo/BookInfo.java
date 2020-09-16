package com.maple.pojo;

import java.math.BigDecimal;

/**
 * @author Administrator
 */
public class BookInfo {

    private Integer id;

    private String name;

    private String type;

    private BigDecimal price;

    private String press;

    private String author;

    private String publicdate;

    private Integer bookcount;

    private String image;

    private String info;

    public BookInfo() {
    }

    public BookInfo(Integer id, String name, String type, BigDecimal price, String press, String author, String publicdate, Integer bookcount, String image, String info) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.price = price;
        this.press = press;
        this.author = author;
        this.publicdate = publicdate;
        this.bookcount = bookcount;
        this.image = image;
        this.info = info;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press == null ? null : press.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getPublicdate() {
        return publicdate;
    }

    public void setPublicdate(String publicdate) {
        this.publicdate = publicdate == null ? null : publicdate.trim();
    }

    public Integer getBookcount() {
        return bookcount;
    }

    public void setBookcount(Integer bookcount) {
        this.bookcount = bookcount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    @Override
    public String toString() {
        return "BookInfo{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", press='" + press + '\'' +
                ", author='" + author + '\'' +
                ", publicdate='" + publicdate + '\'' +
                ", bookcount=" + bookcount +
                ", image='" + image + '\'' +
                ", info='" + info + '\'' +
                '}';
    }
}
