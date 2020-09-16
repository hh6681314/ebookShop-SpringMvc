package com.maple.controller;

import com.maple.pojo.*;
import com.maple.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

/**
 * @author Administrator
 */
@Controller
@RequestMapping("/cart")
public class CartController {

    private CartService cartService;

    @Autowired
    public void setCartService(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/list")
    public String toListCart() {
        return "cart";
    }

    @GetMapping("/checkout")
    public String toCheckout() {
        return "checkout";
    }

    @PostMapping("/updateCart/{num}")
    @ResponseBody
    public String addCart(@PathVariable("num") int num, BookInfo book, HttpSession session) {
        System.out.println(book);
        System.out.println(num);
        if (null == book || num < 1) {
            return "notData";
        }
        ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
        Cart cart;
        if (cartList == null) {
            cartList = new ArrayList<>();
            cart = new Cart();
            cart.setNum(num);
            cart.setB_id(book.getId());
            cart.setName(book.getName());
            cart.setPrice(book.getPrice());
            cart.setPic(book.getImage());
            cartList.add(cart);
        } else {
            AtomicBoolean flag = new AtomicBoolean(true);
            cartList.forEach(c -> {
                if(c.getB_id()==book.getId()){
                    c.setNum(c.getNum()+num);
                    flag.set(false);
                }
            });

            if (flag.get()) {
                cart = new Cart();
                cart.setNum(num);
                cart.setB_id(book.getId());
                cart.setName(book.getName());
                cart.setPrice(book.getPrice());
                cart.setPic(book.getImage());
                cartList.add(cart);
            }
        }
        session.setAttribute("cartList", cartList);
        return "success";
    }

    @PutMapping("/updateCart/{id}/{num}")
    @ResponseBody
    public String updateCart(@PathVariable("id") int id, @PathVariable("num") int num, HttpSession session) {
        ArrayList<Cart> cartList = (ArrayList<Cart>) session.getAttribute("cartList");
        if (cartList == null) {
            return "error";
        }
        cartList.iterator().forEachRemaining(c -> {
            if(c.getB_id()==id){
            c.setNum(num);
            }
        });
        session.setAttribute("cartList", cartList);
        return "success";
    }

    @DeleteMapping("/updateCart/{id}")
    @ResponseBody
    public String delData(@PathVariable("id") int id, HttpSession session) {
        List<Cart> cartList = (List<Cart>) session.getAttribute("cartList");
        if (cartList == null) {
            return "error";
        }
        if (cartList.removeIf(book -> book.getB_id() == id)) {
            session.setAttribute("cartList", cartList);
            return "success";
        }
        
        return "error";
    }



}
