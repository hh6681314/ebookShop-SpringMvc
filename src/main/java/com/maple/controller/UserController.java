package com.maple.controller;

import com.google.gson.Gson;
import com.maple.pojo.User;
import com.maple.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Random;

/**
 * @author Maple
 * @user 用户
 */
@Controller
@RequestMapping("/user")
public class UserController {

    private UserService userService;

    @Autowired
    public void setUserservice(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/toLogin")
    public String toLogin() {
        return "login";
    }

    @GetMapping("/toIndex")
    public String toIndex() {
        return "index";
    }

    @PostMapping("/loginVerify")
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
        return "index";
    }

    @GetMapping("/verifyCode")
    public void verifyCode(HttpServletRequest request, HttpServletResponse response) throws IOException {
        BufferedImage img = new BufferedImage(68, 22, BufferedImage.TYPE_INT_RGB);
        Graphics g = img.getGraphics();
        Random r = new Random();
        Color c = new Color(200, 150, 255);
        g.setColor(c);
        g.fillRect(0, 0, 68, 22);
        StringBuffer sb = new StringBuffer();
        char[] ch = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        int index, len = ch.length;
        for (int i = 0; i < 4; i++) {
            index = r.nextInt(len);
            g.setColor(new Color(r.nextInt(88), r.nextInt(188), r.nextInt(255)));
            g.setFont(new Font("Arial", Font.BOLD | Font.ITALIC, 22));
            g.drawString("" + ch[index], (i * 15) + 3, 18);
            sb.append(ch[index]);
        }
        request.getSession().setAttribute("picCode", sb.toString());
        ImageIO.write(img, "JPG", response.getOutputStream());
    }

    @GetMapping(value = "/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        if (request.getSession().getAttribute("user") == null) {
        } else {
            request.getSession().setAttribute("loginInfo", null);
            request.getSession().setAttribute("user", null);
            request.getSession().invalidate();
        }
        return "redirect:/user/toLogin";
    }

    @RequestMapping(value = "/reg")
    public void addUser(HttpServletRequest request, HttpServletResponse response, User user) throws IOException {
        boolean temp = userService.getUserByName(user.getName());
        String jsonp = request.getParameter("jsoncallback");
        String result = "";
        if (temp) {
            result = new Gson().toJson("exist");
        } else {
            user.setCreateDate(LocalDateTime.now().withNano(0).toString());
            boolean re = userService.addUser(user);
            if (re) {
                result = new Gson().toJson("true");
            } else {
                result = new Gson().toJson("false");
            }
        }
        if (jsonp != null) {
            result = jsonp + "(" + result + ")";
        }
        response.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        response.getWriter().write(result);
    }

}
