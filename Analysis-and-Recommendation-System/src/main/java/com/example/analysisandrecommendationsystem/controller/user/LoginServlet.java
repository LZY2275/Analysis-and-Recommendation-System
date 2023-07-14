package com.example.analysisandrecommendationsystem.controller.user;

import com.example.analysisandrecommendationsystem.entity.User;
import com.example.analysisandrecommendationsystem.service.UserService;
import com.example.analysisandrecommendationsystem.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String password = request.getParameter("password");
        UserService userService = new UserServiceImpl();
        User user = userService.login(name, password);
        if (user.getUsername() != null && !user.getUsername().equals("") && user.getPassword() != null && !user.getPassword().equals("")) {
            request.getSession().setAttribute("user", user);
//            调用其他的方法
//            request.getRequestDispatcher("/list").forward(request, response);
//            System.out.println("登陆成功");
//            System.out.println(user.getBirthday());
        } else {
            request.getRequestDispatcher("/logintest.jsp").forward(request,response);
        }
    }
}
