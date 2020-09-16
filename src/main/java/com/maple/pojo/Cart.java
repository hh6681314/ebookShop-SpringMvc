package com.maple.pojo;

import java.math.BigDecimal;

/**
 * @author Administrator
 */
public class Cart {
    int id;
    int b_id;
    String name;
    String pic;
    int num;
    BigDecimal price;

    public Cart() {
    }

    public Cart(int id, int b_id, String name, String pic, int num, BigDecimal price) {
        this.id = id;
        this.b_id = b_id;
        this.name = name;
        this.pic = pic;
        this.num = num;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", b_id=" + b_id +
                ", name='" + name + '\'' +
                ", pic='" + pic + '\'' +
                ", num=" + num +
                ", price=" + price +
                '}';
    }
}
