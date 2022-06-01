package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.SpProfilesTasks;
import com.diplomlate.diplomlate.entities.SpProfile;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SpProfInfoServlet", value = "/sp_prof_info")
public class SpProfInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SpProfilesTasks daoSpec = new SpProfilesTasks();

        String searched_prof_name = (request.getQueryString());
        SpProfile spProfile = daoSpec.FindSpProfById(Integer.parseInt(searched_prof_name));

       /* String result = dao.SearchSASpecialitiesBySpecID(searched_spec_name);
        dao.FindSAinList(searched_spec_name);*/

        if (spProfile != null) {

            RequestDispatcher dispatcher = request.getRequestDispatcher("SpProfileInfo.jsp");
            dispatcher.forward(request, response);
        }
        else {

            System.out.println("ERROR");

            //TODO: переделать span
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("<span class=\"notifications\">Отсутствуют необходимые данные</span>");

            RequestDispatcher req = request.getRequestDispatcher("SpecInfo.jsp");
            req.include(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
