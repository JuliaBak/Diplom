package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.StudyAreasTasks;
import com.diplomlate.diplomlate.entities.Speciality;
import com.diplomlate.diplomlate.entities.StudyArea;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudyAreaInfoServlet", value = "/study-area-info")
public class StudyAreaInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //TODO: исправить внешнее представление всех страниц
        StudyAreasTasks dao = new StudyAreasTasks();
        StudyAreasTasks.sa_specialities.clear();

        String id=request.getQueryString();

        String result = dao.SearchSASpecialitiesBySpecID(id);
        dao.FindSAinList(id);

        if (result.equals("Success")) {
            List<Speciality> allSASpec = new ArrayList<Speciality>(StudyAreasTasks.sa_specialities);

            for (Speciality spec : allSASpec) {

                String spec_name = spec.getSpec_name();
                request.setAttribute("spec_name",spec_name);

                String spec_number = spec.getSpec_number();
                request.setAttribute("spec_number",spec_number);

                String spec_description = spec.getSpec_description();
                request.setAttribute("spec_description",spec_description);

            }

            request.setAttribute("sa_specialities",StudyAreasTasks.sa_specialities);

            RequestDispatcher dispatcher = request.getRequestDispatcher("StudyAreaInfo.jsp");
            dispatcher.forward(request, response);
        }
        else {

            System.out.println("ERROR");

           /* RequestDispatcher req = request.getRequestDispatcher("login/add.jsp");
            req.include(request, response);*/
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
