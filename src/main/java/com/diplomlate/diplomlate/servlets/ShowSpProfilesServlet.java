package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.entities.SpProfile;
import com.diplomlate.diplomlate.entities.Speciality;
import com.diplomlate.diplomlate.tasks.SpProfilesTasks;
import com.diplomlate.diplomlate.tasks.SpecialitiesTasks;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowSpProfilesServlet", value = "/show-profiles")
public class ShowSpProfilesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            SpProfilesTasks dao = new SpProfilesTasks();
            String result = dao.ShowAllSpProf();

            if (result.equals("Success")) {
                List<SpProfile> allProf = new ArrayList<SpProfile>(SpProfilesTasks.spProfiles);

                for (SpProfile prof : allProf) {

                    String sp_prof_name = prof.getSp_prof_name();
                    request.setAttribute("sp_prof_name", sp_prof_name);

                    String sp_prof_id = String.valueOf(prof.getSp_prof_id());
                    request.setAttribute("sp_prof_id", sp_prof_id);

                    String sp_prof_description = prof.getSp_prof_description();
                    request.setAttribute("sp_prof_description", sp_prof_description);

                    String sp_prof_spec_id = String.valueOf(prof.getSp_prof_spec_id());
                    request.setAttribute("sp_prof_spec_id", sp_prof_spec_id);

                }

                request.setAttribute("sp_profiles", SpProfilesTasks.spProfiles);

                RequestDispatcher dispatcher = request.getRequestDispatcher("Profiles.jsp");
                dispatcher.forward(request, response);
            } else {

                System.out.println("ERROR");

           /* RequestDispatcher req = request.getRequestDispatcher("login/add.jsp");
            req.include(request, response);*/
            }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
