package com.maple.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

public class CartInterceptor extends HandlerInterceptorAdapter {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        if (null!=session.getAttribute("user")){
            return true;
        }
        session.setAttribute("loginInfo","结算前请先登录！");
        if(request.getRequestURI().contains("toMyOrder")){
            session.setAttribute("loginInfo","查看订单前请先登录！");
            response.sendRedirect(request.getContextPath() + "/user/toLogin");
            return false;
        }
        if(request.getRequestURI().contains("order")){
            response.setContentType("text/html");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
            out.print("noLogin");
            out.flush();
            out.close();
            return false;
        }
        response.sendRedirect(request.getContextPath() + "/user/toLogin");
        return false;
    }
}
