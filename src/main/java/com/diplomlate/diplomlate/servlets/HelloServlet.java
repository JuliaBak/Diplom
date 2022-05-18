package com.diplomlate.diplomlate.servlets;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "HelloServlet", urlPatterns = "/specialities-look") //value
public class HelloServlet extends HttpServlet {
    private String message;

    //TODO: не работает русская кодировка, только английский текст отображается
    public void init() {
        message = "Specialities";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

     /*  String firstName = request.getParameter("firstName");
       String lastName = request.getParameter("lastName");

       if(firstName == null || lastName == null)
       {
           PrintWriter out = response.getWriter();
           out.println("<html><head>\n" +
                   "    <meta charset=\"UTF-8\">\n" +
                   "</head><body>");
           out.println("<h1>" + "Never found"+"</h1>");
           out.println("</body></html>");

       }else {
           PrintWriter out = response.getWriter();
           out.println("<html><head>\n" +
                   "    <meta charset=\"UTF-8\">\n" +
                   "</head><body>");
           out.println("<h1>" + "You're searching for " + firstName + " " + lastName + "</h1>");
           out.println("</body></html>");
       }

      */
        //переход на jsp
        getServletContext().getRequestDispatcher("/Specialities.jsp").forward(request, response);

        // Выбор правильной кодировки для отображения русского текста
        /* PrintWriter out = response.getWriter();
        out.println("<html><head>\n" +
                "    <meta charset=\"UTF-8\">\n" +
                "</head><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
        */

    }

    public void destroy() {
    }
}