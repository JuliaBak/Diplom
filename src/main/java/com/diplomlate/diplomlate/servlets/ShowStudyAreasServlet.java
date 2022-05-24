package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.SpecialitiesTasks;
import com.diplomlate.diplomlate.dao.StudyAreasTasks;
import com.diplomlate.diplomlate.entities.Speciality;
import com.diplomlate.diplomlate.entities.StudyArea;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ShowStudyAreasServlet", value = "/ShowStudyAreasServlet")
public class ShowStudyAreasServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudyAreasTasks dao = new StudyAreasTasks();
        String result = dao.ShowAllStudyAreas();

        if (result.equals("Success")) {
            List<StudyArea> allSA = new ArrayList<StudyArea>(StudyAreasTasks.study_areas);

            for (StudyArea studyArea : allSA) {

                String sa_name = studyArea.getSa_name();
                request.setAttribute("sa_name",sa_name);

                String sa_description = studyArea.getSa_description();
                request.setAttribute("sa_description",sa_description);

            }

            request.setAttribute("study_areas",StudyAreasTasks.study_areas);

            RequestDispatcher dispatcher = request.getRequestDispatcher("StudyAreas.jsp");
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
