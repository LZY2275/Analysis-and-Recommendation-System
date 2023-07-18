package com.example.analysisandrecommendationsystem.controller.school;

import com.example.analysisandrecommendationsystem.entity.CollegeApplicationItem;
import com.example.analysisandrecommendationsystem.service.SchoolService;
import com.example.analysisandrecommendationsystem.service.impl.SchoolServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getschollform")
public class GetSchoolByForm extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String province = request.getParameter("province");
        String type = request.getParameter("type");
        String scoreString = request.getParameter("score");
        int score = Integer.parseInt(scoreString);
        SchoolService service = new SchoolServiceImpl();
        List<CollegeApplicationItem> list = service.getSchoolByForm(province, type, score);
        System.out.println(list);
        if(!list.isEmpty()){
            request.setAttribute("applicationitem",list);
//            重定向到某个方法或者页面

        }
    }
}
