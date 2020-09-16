package com.maple.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

/**
 * @author Administrator
 */
@ResponseBody
public class RoleInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
//        if (null!=session.getAttribute("user") || request.getServletPath().startsWith("/admin/toLogin")){
//            return true;
//        }
        if (null!=session.getAttribute("user") || request.getRequestURI().contains("Login")){
            return true;
        }
        response.sendRedirect(request.getContextPath() + "/admin/toLogin");
        return false;
    }
}
