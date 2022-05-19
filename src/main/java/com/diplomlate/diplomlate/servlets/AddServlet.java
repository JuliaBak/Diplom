package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.entities.User;
import com.diplomlate.diplomlate.model.Model;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AddServlet", urlPatterns = "/add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("login/add.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("pass");

      /*  PrintWriter out = response.getWriter();*/
       /* if (!name.isEmpty() && !password.isEmpty() )*/ {

            if (name.isEmpty() || password.isEmpty()) {
                RequestDispatcher req = request.getRequestDispatcher("login/add.jsp");
                req.forward(request, response);
            } else {
                User user = new User(name, password);
                Model model = Model.getInstance();
                model.add(user);

                request.setAttribute("userName", name);
                request.setAttribute("password", password);
                doGet(request, response);

               // RequestDispatcher req = request.getRequestDispatcher("index.jsp");
              //  req.forward(request, response);
            }



            /*out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                    "   <h5>Пользователь '" + request.getAttribute("userName") + "' добавлен!</h5>\n" +
                    "</div>");*/
        }
      /*  else {
            out.println("<div class=\"w3-panel w3-green w3-display-container w3-card-4 w3-round\">\n" +
                    "   <span onclick=\"this.parentElement.style.display='none'\"\n" +
                    "   class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                    "   <h5>Заполните поля!</h5>\n" +
                    "</div>");
            doGet(request, response);

        }*/

    }
}
