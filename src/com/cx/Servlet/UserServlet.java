package com.cx.Servlet;

import com.cx.service.UserSevice;
import com.cx.servicelmp.UserSevicelmp;
import com.cx.vo.User;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置请求编码格式
        req.setCharacterEncoding("utf-8");
        //设置响应编码给谁
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset = utf-8");
        //获取请求信息
        String name = req.getParameter("name");
        System.out.println("用户请求信息为"+name);
        //处理请求信息
               //获取业务对象
        UserSevice us = new UserSevicelmp();
        //处理业务
       User u= us.getuUserInfoSevice(name);
        System.out.println("查询结果为："+u);
        //响应处理结果
       resp.getWriter().write(new Gson().toJson(u));
    }
}
