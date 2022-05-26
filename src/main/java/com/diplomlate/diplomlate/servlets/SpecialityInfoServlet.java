package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.SpecialitiesTasks;
import com.diplomlate.diplomlate.entities.Speciality;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SpecialityInfoServlet", value = "/spec-info")
public class SpecialityInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SpecialitiesTasks daoSpec = new SpecialitiesTasks();

        String searched_spec_number = request.getQueryString();
      Speciality speciality = daoSpec.FindSpecBySpecNumber(searched_spec_number);

       /* String result = dao.SearchSASpecialitiesBySpecID(searched_spec_name);
        dao.FindSAinList(searched_spec_name);*/

        if (speciality != null) {

            RequestDispatcher dispatcher = request.getRequestDispatcher("SpecInfo.jsp");
            dispatcher.forward(request, response);
        }
        else {

            System.out.println("ERROR");

            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("<span class=\"notifications\">Отсутствуют необходимые данные</span>");

            RequestDispatcher req = request.getRequestDispatcher("StudyAreaInfo.jsp");
            req.include(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
