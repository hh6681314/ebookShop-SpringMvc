package com.maple.controller;

import com.maple.pojo.Cart;
import com.maple.pojo.OrderDetail;
import com.maple.pojo.OrderInfo;
import com.maple.pojo.User;
import com.maple.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    private OrderService orderService;

    @Autowired
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/toMyOrder")
    public String toMyOrder(HttpSession session){
        User user = (User) session.getAttribute("user");
        ArrayList<OrderInfo> orderInfos = orderService.selectByUserId(user.getId());
        session.setAttribute("orderInfos",orderInfos);
        return "myOrder";
    }

    @PostMapping("/addOrder")
    @ResponseBody
    public String addOrder(HttpSession session){
        List<Cart> cartList = (List<Cart>) session.getAttribute("cartList");
        User user = (User)session.getAttribute("user");
        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setUserId(user.getId());
        orderInfo.setStatus("已确认");
        orderInfo.setOrderTime(LocalDateTime.now().withNano(0).toString());
        ArrayList<OrderDetail> orderDetails = new ArrayList<>();
        for (Cart cart : cartList) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setbId(cart.getB_id());
            orderDetail.setNum(cart.getNum());
            orderDetails.add(orderDetail);
        }
        orderInfo.setOrderDetailArrayList(orderDetails);
        Boolean addOrderBoolean = orderService.addOrder(orderInfo);
        if(addOrderBoolean){
            session.setAttribute("cartList",null);
            return "success";
        }
        return "error";
    }

    @ResponseBody
    @PutMapping("/confirm/{orderId}")
    public String orderConfirm(HttpSession session, @PathVariable("orderId") int id){
        User user = (User) session.getAttribute("user");
        
        if(orderService.orderConfirm(id, user.getId())){
            return "success";
        }
        return "error";
    }


}
