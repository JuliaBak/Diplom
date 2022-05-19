package com.diplomlate.diplomlate.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "User_login", value = "/user_login_success")
public class User_login extends HttpServlet {

    public User_login() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if(username.isEmpty() || password.isEmpty() )
        {
            RequestDispatcher req = request.getRequestDispatcher("Register_3.jsp");
            req.forward(request, response);
        }
        else
        {
           request.setAttribute("usernameLogin", username);
            request.setAttribute("passwordLogin", password);

            RequestDispatcher req = request.getRequestDispatcher("MainPage.jsp");
            req.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Register_3.jsp");
        requestDispatcher.forward(req, resp);
    }
}
