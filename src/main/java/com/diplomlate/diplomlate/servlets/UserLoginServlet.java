package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.tasks.Login;
import com.diplomlate.diplomlate.entities.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserLoginServlet", value = "/user_login_success")
public class UserLoginServlet extends HttpServlet {

    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User();
        Login dao = new Login();

        user.setName(username);
        user.setPassword(password);

        if(!dao.validateUser(user) || username.isEmpty() || password.isEmpty())
        {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();

                out.println("Неверно введены данные!");

            RequestDispatcher req = request.getRequestDispatcher("Login.jsp");
            req.include(request, response);

        }
        else
        {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("");

            request.setAttribute("usernameLogin", username);
            request.setAttribute("passwordLogin", password);

            RequestDispatcher req = request.getRequestDispatcher("Main.jsp");
            req.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Login.jsp");
        requestDispatcher.forward(req, resp);
    }
}
