package com.cx.Servlet;




import com.sun.net.httpserver.spi.HttpServerProvider;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/ajax")
public class AjaxServlet extends HttpServlet {
     @Override
          protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                    //设置请求编码格式
              request.setCharacterEncoding("urf-8");
                     //设置响应编码格式
                             response.setCharacterEncoding("utf-8");
                             response.setContentType("text/html;charest=utf-8");
                    //获取请求信息
                    String name = request.getParameter("name");
                    String pwd = request.getParameter("pwd");
                        System.out.println(name+":"+pwd+request.getMethod());
                   //处理请求信息
                  //响应处理结果
                         response.getWriter().write("2020年糟糕的一年");
          }

}
