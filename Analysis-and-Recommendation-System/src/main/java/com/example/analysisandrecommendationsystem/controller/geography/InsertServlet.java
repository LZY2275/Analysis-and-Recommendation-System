package com.example.analysisandrecommendationsystem.controller.geography;

import com.example.analysisandrecommendationsystem.entity.Geography;
import com.example.analysisandrecommendationsystem.service.GeographyService;
import com.example.analysisandrecommendationsystem.service.impl.GeographyServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/insertgeo")
public class InsertServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        GeographyService service = new GeographyServiceImpl();
        Geography test = service.getGeoInfo(name,address);
        if(test.getName()!=null && !test.equals("")) {
            String erromessage = "插入失败，已有主键实体";
            req.setAttribute("errorMessage",erromessage);
            req.getRequestDispatcher("/jsp/addnewgeo.jsp").forward(req,resp);
        }else {
            service.insertInfo(name, address);
            List<Geography> list = service.geoList();
            if (!list.isEmpty()) {
                req.getSession().setAttribute("geoList", list);
                resp.sendRedirect("/jsp/managegeography.jsp");
            }
        }
    }
}
