package com.maple.controller;

import com.maple.pojo.BookInfo;
import com.maple.pojo.OrderInfo;
import com.maple.pojo.User;
import com.maple.service.BookInfoService;
import com.maple.service.OrderService;
import com.maple.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/**
 * @author Administrator
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    private BookInfoService bookInfoService;
    private UserService userService;
    private OrderService orderService;

    @Autowired
    public void setBookInfoService(BookInfoService bookInfoService) {
        this.bookInfoService = bookInfoService;
    }

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping(path = "/toAdminMain")
    public String toAdminMain() {
        return "admin/admin_main";
    }

    @GetMapping(path = "/toLogin")
    public String toLogin() {
        return "admin/login";
    }

    @GetMapping(path = "/toAddBook")
    public String toAddBook() {
        return "admin/add_book";
    }

    @GetMapping(path = "/toOrderList")
    public String toListOrder(Model model) {
        model.addAttribute("orderList",orderService.selectAllOrder());
        return "admin/list_order";
    }

    @GetMapping(path = "/toOrderDetail/{orderId}")
    public String toOrderDetail(@PathVariable("orderId") int id,Model model) {
        OrderInfo orderInfo = orderService.selectOrderById(id);
        model.addAttribute("orderInfo",orderInfo);
        return "admin/order_detail";
    }

    @ResponseBody
    @PutMapping("/orderShip/{orderId}")
    public String orderShip(@PathVariable("orderId") int id){
        boolean flag = false;
        try {
            flag = orderService.orderShip(id);
        }catch (Exception e){
            return "shortage";
        }
        if(flag){
            return "success";
        }
        return "error";
    }

    @GetMapping(path = "/toUpdateBook/{bookId}")
    public String toUpdateBook(@PathVariable("bookId") int id, Model model) {
        model.addAttribute("detail", bookInfoService.queryBookById(id));
        return "admin/update_book";
    }

    @GetMapping(path = "/toAdminBookList")
    public String toAdminBookList(Model model) {
        model.addAttribute("adminBookList", bookInfoService.queryAllBook());
        return "admin/list_book";
    }

    @PostMapping(path = "/update")
    @ResponseBody
    public String addBook(BookInfo bookInfo) {
        if (bookInfo.getName() == null || bookInfo.getName().isEmpty()) {
            return "noData";
        }
        BookInfo queryBook = bookInfoService.queryBookByName(bookInfo.getName());
        if (null == queryBook) {
            bookInfoService.addBook(bookInfo);
            return "success";
        }

        return "exist";
    }

    @DeleteMapping(path = "/update/{bookId}")
    @ResponseBody
    public String delBook(@PathVariable("bookId") int id) {
        if (!bookInfoService.delBook(id)) {
            return "error";
        }
        return "success";
    }

    @DeleteMapping(path = "/delMultipleBook", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String delMultipleBook(@RequestBody String jsonList) {
        String substring = jsonList.substring(1, jsonList.length() - 1);
        String[] jsonListSplit = substring.split(",");
        List<Integer> list = new ArrayList<>();
        for (String s : jsonListSplit) {
            list.add(Integer.parseInt(s));
        }
        bookInfoService.delMultipleBook(list);
        return "success";
    }

    @PutMapping(path = "/update", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public String updateBook(@RequestBody BookInfo bookInfo) {
        BookInfo sqlBook = bookInfoService.queryBookByName(bookInfo.getName());
        if (sqlBook != null && !sqlBook.getId().equals(bookInfo.getId())) {
            return "exist";
        } else if (bookInfoService.queryBookById(bookInfo.getId()) != null) {
            if (bookInfoService.updateById(bookInfo)) {
                return "success";
            }
            return "error";
        }
        return "error";
    }

    @PostMapping("/toLoginVerify")
    public String login(HttpServletRequest request, User user) {
        String code = request.getParameter("code");
        String picCode = (String) request.getSession().getAttribute("picCode");
        if (picCode.equalsIgnoreCase(code)) {
            user = userService.login(user);
            if (user == null) {
                request.getSession().setAttribute("loginInfo", "用户名或密码错误");
            } else {
                request.getSession().setAttribute("loginInfo", null);
                request.getSession().setAttribute("user", user);
            }
        } else {
            request.getSession().setAttribute("loginInfo", "验证码错误");
        }
        return "redirect:/admin/toAdminMain";
    }

    @GetMapping(value = "/logout")
    public String logout(HttpServletRequest request){
        if (request.getSession().getAttribute("user") == null) {
        } else {
            request.getSession().setAttribute("loginInfo", null);
            request.getSession().setAttribute("user", null);
            request.getSession().invalidate();
        }
        return "redirect:/admin/toLogin";
    }


    @ResponseBody
    @GetMapping("/statistic")
    public String orderStatistic(){
        ArrayList<OrderInfo> orderInfos = orderService.selectAllOrder();
        AtomicReference<BigDecimal> priceStatistic = new AtomicReference<>(new BigDecimal(0));
        orderInfos.forEach(
                info -> info.getOrderDetailArrayList().forEach(
                        detail -> detail.getBookInfoArrayList().forEach(
                                bookInfo -> {
                                    var bookPrice = bookInfo.getPrice();
                                    BigDecimal bigDecimal = priceStatistic.get();
                                    priceStatistic.set(bookPrice.multiply(new BigDecimal(detail.getNum())).add(bigDecimal));
                                }
                        )
                )
        );
        return priceStatistic.toString();
    }

}
