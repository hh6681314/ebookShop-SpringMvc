package com.maple.mapper;

import com.maple.pojo.BookInfo;
import com.maple.pojo.OrderInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.ArrayList;


@Mapper
public interface OrderMapper {
    int addOrder(OrderInfo orderInfo);

    ArrayList<OrderInfo> selectByUserId(int userId);

    ArrayList<OrderInfo> selectAllOrder();

    OrderInfo selectOrderById(int id);

    int orderShip(int id);

    int orderStock(ArrayList<BookInfo> bookInfoArrayList);

    int orderConfirm(@Param("id")int id, @Param("userId")int userId);

}
