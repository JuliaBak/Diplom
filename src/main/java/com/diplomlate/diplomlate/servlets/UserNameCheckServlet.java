package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.User;
import com.diplomlate.diplomlate.tasks.Login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "UserNameCheckServlet", urlPatterns = "/username-validation")
public class UserNameCheckServlet extends HttpServlet {

    Connection con = null;
    PreparedStatement sqlName = null;
    ResultSet rs = null;

   String passPattern = ("^((\\w|([а-яА-Я0-9_])){4,10}$)");
   boolean isRightPass = false;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = "";
        String password = "";
        String mode = request.getParameter("mode");

        if(Objects.equals(mode, "1"))
        {
            username = request.getParameter("username");
            try {
                con = DBConnection.getConnection();
                sqlName = con.prepareStatement("SELECT * FROM users WHERE user_name=?");
                sqlName.setString(1, username);
                rs = sqlName.executeQuery();

                if(rs.next())
                {
                    response.setContentType("text/html; charset=utf-8");
                    PrintWriter out = response.getWriter();
                    out.println("Пользователь с таким именем уже существует");
                }
                else {
                    response.setContentType("text/html");
                    PrintWriter out = response.getWriter();
                    out.println("");
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
        else if(Objects.equals(mode, "2")){
             password = request.getParameter("password");
            isRightPass = Pattern.matches(passPattern, password);
            if(!isRightPass && !password.isEmpty()){
                response.setContentType("text/html; charset=utf-8");
                PrintWriter out = response.getWriter();
                out.println("Пароль должен содержать от 4 до 10 символов и состоять из букв и/или цифр");
            }
            else {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("");
            }
        }
       /* else if(Objects.equals(mode, "3")){
            String passLog = request.getParameter("passwordLog");
           String usernameLog = request.getParameter("usernameLog");

            User user = new User();
            Login dao = new Login();

            user.setName(usernameLog);
            user.setPassword(passLog);

            if(!dao.validateUser(user) || usernameLog.isEmpty() || passLog.isEmpty()){
                response.setContentType("text/html; charset=utf-8");
                PrintWriter out = response.getWriter();
                out.println("Wrong Data");
            }
            else {
                response.setContentType("text/html; charset=utf-8");
                PrintWriter out = response.getWriter();
                out.println("");

                dao.setLoggedUser(user);

                request.setAttribute("usernameLogin", usernameLog);
                request.setAttribute("passwordLogin", passLog);

                RequestDispatcher req = request.getRequestDispatcher("Main.jsp");
                req.forward(request, response);
            }
        }*/

    }

}
