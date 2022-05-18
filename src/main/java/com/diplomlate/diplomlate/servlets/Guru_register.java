package com.diplomlate.diplomlate.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Guru_register", value = "/Guru_register")
public class Guru_register extends HttpServlet {
    /**
     * Servlet implementation class guru_register
     */

        private static final long serialVersionUID = 1L;

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // TODO Auto-generated method stub
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");

            if (first_name.isEmpty() || last_name.isEmpty() || username.isEmpty() ||
                    password.isEmpty() || address.isEmpty() || contact.isEmpty()) {
                RequestDispatcher req = request.getRequestDispatcher("Register_1.jsp");
                req.include(request, response);
            } else {
                RequestDispatcher req = request.getRequestDispatcher("Register_2.jsp");
                req.forward(request, response);
            }
        }

}
