package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.RegisterDao;
import com.diplomlate.diplomlate.dao.SpecialitiesTasks;
import com.diplomlate.diplomlate.entities.Speciality;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowSpecialitiesServlet", value = "/ShowSpecialitiesServlet")
public class ShowSpecialitiesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SpecialitiesTasks dao = new SpecialitiesTasks();
        String result = dao.ShowAllSpecialities();

        if (result.equals("Success")) {
            List<Speciality> allSpec = new ArrayList<Speciality>(SpecialitiesTasks.specialities);

            for (Speciality spec : allSpec) {

                String spec_name = spec.getSpec_name();
                request.setAttribute("spec_name",spec_name);

                String spec_number = spec.getSpec_number();
                request.setAttribute("spec_number",spec_number);

                String spec_description = spec.getSpec_description();
                request.setAttribute("spec_description",spec_description);

            }

            request.setAttribute("specialities",SpecialitiesTasks.specialities);

            RequestDispatcher dispatcher = request.getRequestDispatcher("newSpecialities.jsp");
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
