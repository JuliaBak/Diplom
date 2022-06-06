package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.tasks.Login;
import com.diplomlate.diplomlate.entities.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import static com.diplomlate.diplomlate.entities.User.loggedUser;

@WebServlet(name = "UserLoginServlet", value = "/user_login_success")
public class UserLoginServlet extends HttpServlet {

    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("usernameLog");
        String password = request.getParameter("passwordLog");

        User user = new User();
        Login dao = new Login();

        user.setName(username);
        user.setPassword(password);
        System.out.println(user.getName() + " " + user.getPassword());

        if(!dao.validateUser(user) || username.isEmpty() || password.isEmpty())
        {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            /*out.println("Неверно введены данные!");*/
            out.println("<div style=\"position: center\">" +
                      "  <span style=\"color: red; font-size: 18px\" id=\"announce\">Неверно введены данные!</span>"
            + "</div>");

            RequestDispatcher req = request.getRequestDispatcher("Login.jsp");
            req.include(request, response);
            System.out.println("nooooooo");

        }
        else
        {
            System.out.println("Here");

            /*response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("");*/

            dao.setLoggedUser(user);

            System.out.println(loggedUser.getName() + " " + loggedUser.getPassword() + "Login");

            request.setAttribute("usernameLogin", username);
            request.setAttribute("passwordLogin", password);

            RequestDispatcher req = request.getRequestDispatcher("Main.jsp");
            req.forward(request, response);

           /* StartServlet start = new StartServlet();
            start.doPost(request, response);*/
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/Login.jsp");
        requestDispatcher.forward(req, resp);
    }
}
