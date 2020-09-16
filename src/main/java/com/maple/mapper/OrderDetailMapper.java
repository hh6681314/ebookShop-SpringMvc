package com.maple.mapper;

import com.maple.pojo.OrderDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.ArrayList;


@Mapper
public interface OrderDetailMapper {

    //int addOrderDetail(OrderDetail orderDetail);

    int addOrderDetail(ArrayList<OrderDetail> orderDetail);

    OrderDetail selectOrderDetailByOid(int o_id);


}
