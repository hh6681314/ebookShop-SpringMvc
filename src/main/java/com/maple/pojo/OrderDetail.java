package com.maple.pojo;

import java.util.ArrayList;

public class OrderDetail {
    int oId;
    int bId;
    int num;

    private ArrayList<BookInfo> bookInfoArrayList;

    public ArrayList<BookInfo> getBookInfoArrayList() {
        return bookInfoArrayList;
    }

    public void setBookInfoArrayList(ArrayList<BookInfo> bookInfoArrayList) {
        this.bookInfoArrayList = bookInfoArrayList;
    }

    public OrderDetail() {
    }

    public OrderDetail(int oId, int bId, int num) {
        this.oId = oId;
        this.bId = bId;
        this.num = num;
    }

    public int getoId() {
        return oId;
    }

    public void setoId(int oId) {
        this.oId = oId;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    @Override
    public String toString() {
        return "OrderDetail{" +
                "oId=" + oId +
                ", bId=" + bId +
                ", num=" + num +
                ", bookInfoArrayList=" + bookInfoArrayList +
                '}';
    }
}
