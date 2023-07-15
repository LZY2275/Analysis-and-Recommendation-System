package com.example.analysisandrecommendationsystem.controller.school;

import com.example.analysisandrecommendationsystem.service.SchoolService;
import com.example.analysisandrecommendationsystem.service.impl.SchoolServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/searchBySchoolName")
public class SearchByNameServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        SchoolService service = new SchoolServiceImpl();
        List<String> list = service.searchByName(keyword);
        if (!list.isEmpty()){
            request.setAttribute("searchSchoolList",list);
            request.getRequestDispatcher("/testsearchbyschoolname.jsp").forward(request,response);
        }
    }
}
