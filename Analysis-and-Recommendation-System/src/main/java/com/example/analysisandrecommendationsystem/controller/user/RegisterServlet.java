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

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        获得username和password的值
        String username = request.getParameter("name");
        String password = request.getParameter("password");
        UserService userService = new UserServiceImpl();

//        由于username是主键，现在数据库中查找是否有重名的
        if (!username.equals("") && username != null) {
//            无重名的人为false
            if (!userService.hasSameUsername(username)){
                userService.register(username, password);
//                从数据库中获得注册的user对象,setsession
                User user = userService.login(username, password);
                request.getSession().setAttribute("user", user);
//                重定向到某个方法
//                request.getRequestDispatcher("/list").forward(request,response);
            }
        }
    }
}
