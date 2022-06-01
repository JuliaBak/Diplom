package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.SpProfilesTasks;
import com.diplomlate.diplomlate.dao.SpecialitiesTasks;
import com.diplomlate.diplomlate.entities.Speciality;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import static com.diplomlate.diplomlate.dao.SpProfilesTasks.searchedSpProfiles;
import static com.diplomlate.diplomlate.dao.SpProfilesTasks.spProfiles;
import static com.diplomlate.diplomlate.dao.SpecialitiesTasks.specialities;

@WebServlet(name = "SpecialityInfoServlet", value = "/spec-info")
public class SpecialityInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SpecialitiesTasks daoSpec = new SpecialitiesTasks();

        int searched_spec_number = Integer.parseInt(request.getQueryString());
        Speciality speciality = daoSpec.FindSpecById(searched_spec_number);

        SpProfilesTasks daoSpProf = new SpProfilesTasks();

        spProfiles.clear();
        daoSpProf.ShowAllSpProf();

        searchedSpProfiles.clear();
        daoSpProf.SearchProfilesBySpecID(searched_spec_number);

       /* String result = dao.SearchSASpecialitiesBySpecID(searched_spec_name);
        dao.FindSAinList(searched_spec_name);*/

        if (speciality != null) {

            RequestDispatcher dispatcher = request.getRequestDispatcher("SpecInfo.jsp");
            dispatcher.forward(request, response);
        }
        else {

            System.out.println("ERROR");

            //TODO: переделать span
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
