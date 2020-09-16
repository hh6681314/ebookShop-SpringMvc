package com.maple.service;

import com.maple.mapper.OrderDetailMapper;
import com.maple.mapper.OrderMapper;
import com.maple.pojo.BookInfo;
import com.maple.pojo.OrderDetail;
import com.maple.pojo.OrderInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;

@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
public class OrderService {
    private OrderMapper orderMapper;
    private OrderDetailMapper orderDetailMapper;

    @Autowired
    public void setOrderMapper(OrderMapper orderMapper) {
        this.orderMapper = orderMapper;
    }

    @Autowired
    public void setOrderDetailMapper(OrderDetailMapper orderDetailMapper) {
        this.orderDetailMapper = orderDetailMapper;
    }

    public Boolean addOrder(OrderInfo orderInfo) {
        if (orderMapper.addOrder(orderInfo) > 0) {
            for (OrderDetail orderDetail : orderInfo.getOrderDetailArrayList()) {
                orderDetail.setoId(orderInfo.getId());
            }
            if (orderDetailMapper.addOrderDetail(orderInfo.getOrderDetailArrayList()) != orderInfo.getOrderDetailArrayList().size()) {
                throw new RuntimeException("订单详情添加异常");
            }
        } else {
            throw new RuntimeException("订单编号添加失败");
        }
        return true;
    }

    public ArrayList<OrderInfo> selectByUserId(int userId) {
        return orderMapper.selectByUserId(userId);
    }

    public ArrayList<OrderInfo> selectAllOrder() {
        return orderMapper.selectAllOrder();
    }

    public OrderInfo selectOrderById(int id) {
        return orderMapper.selectOrderById(id);
    }

    public Boolean orderShip(int id) {
        OrderInfo orderInfo = orderMapper.selectOrderById(id);
        ArrayList<BookInfo> books = new ArrayList<>();
        for (OrderDetail orderDetail : orderInfo.getOrderDetailArrayList()) {
            for (BookInfo bookInfo : orderDetail.getBookInfoArrayList()) {
                if (orderDetail.getbId() == bookInfo.getId()) {
                    if (bookInfo.getBookcount() < orderDetail.getNum()) {
                        throw new RuntimeException("库存不足");
                    }
                    bookInfo.setBookcount(orderDetail.getNum());
                    books.add(bookInfo);
                }
            }
        }
        if (books.size() != orderMapper.orderStock(books)) {
            throw new RuntimeException("库存扣减失败");
        } else {
            return orderMapper.orderShip(id) > 0;
        }
    }

    public boolean orderConfirm(int id, int userId) {
        return orderMapper.orderConfirm(id, userId) > 0;
    }

}
