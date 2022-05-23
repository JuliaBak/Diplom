package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.dao.RegisterDao;
import com.diplomlate.diplomlate.entities.User;
import com.diplomlate.diplomlate.model.Model;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddServlet", urlPatterns = "/add")
public class RegisterUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login/add.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("register post");
      //  response.setContentType("text/html");

        String name = request.getParameter("name");
        String password = request.getParameter("pass");
        String email = request.getParameter("email");

      /*  PrintWriter out = response.getWriter();*/
       /* if (!name.isEmpty() && !password.isEmpty() )*/ {

            if (name.isEmpty() || password.isEmpty()) {

                response.setContentType("text/html; charset=utf-8");
                PrintWriter out = response.getWriter();
                out.println("<span class=\"notification-alert\">Пустые поля</span>");

                RequestDispatcher req = request.getRequestDispatcher("login/add.jsp");
                req.include(request, response);


            } else {
                User user = new User(name, password, email);

                Model model = Model.getInstance();
                model.add(user);

                RegisterDao dao = new RegisterDao();
                String result = dao.RegisterInDB(user);

                request.setAttribute("userName", name);
                request.setAttribute("password", password);
                request.setAttribute("email", email);

                if (result.equals("User is registered")) {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
                    dispatcher.forward(request, response);
                }
                else {

                    RequestDispatcher req = request.getRequestDispatcher("login/add.jsp");
                    req.include(request, response);
                }
/*

                request.setAttribute("userName", name);
                request.setAttribute("password", password);
                request.setAttribute("email", email);
                doGet(request, response);
*/

               // RequestDispatcher req = request.getRequestDispatcher("index.jsp");
              //  req.forward(request, response);
            }

        }

    }
}
