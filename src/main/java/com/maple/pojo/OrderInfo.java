package com.maple.pojo;


import java.util.ArrayList;

public class OrderInfo {

    int id;
    int userId;
    String status;
    String orderTime;

    private ArrayList<OrderDetail> orderDetailArrayList;
    private User user;

    public OrderInfo() {
    }

    public OrderInfo(int id, int userId, String status, String orderTime, ArrayList<OrderDetail> orderDetailArrayList) {
        this.id = id;
        this.userId = userId;
        this.status = status;
        this.orderTime = orderTime;
        this.orderDetailArrayList = orderDetailArrayList;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(String orderTime) {
        this.orderTime = orderTime;
    }

    public ArrayList<OrderDetail> getOrderDetailArrayList() {
        return orderDetailArrayList;
    }

    public void setOrderDetailArrayList(ArrayList<OrderDetail> orderDetailArrayList) {
        this.orderDetailArrayList = orderDetailArrayList;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "OrderInfo{" +
                "id=" + id +
                ", userId=" + userId +
                ", status='" + status + '\'' +
                ", orderTime='" + orderTime + '\'' +
                ", orderDetailArrayList=" + orderDetailArrayList +
                ", user=" + user +
                '}';
    }
}
