package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.User;
import com.diplomlate.diplomlate.tasks.Login;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;
import java.util.regex.Pattern;

import static com.diplomlate.diplomlate.entities.User.loggedUser;

@WebServlet(name = "UpdateUserDataServlet", value = "/update-user-data")
public class UpdateUserDataServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String newUsername = "";
        String newPass = "";
        String newEmail = "";

        newUsername = request.getParameter("newUsername");
        newPass = request.getParameter("newPass");
        newEmail = request.getParameter("newEmail");

        if (newUsername.isEmpty() || newUsername.equals(" ")) {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("Имя не может быть пустым");
        }
        else if(newPass.isEmpty() || newPass.equals(" ")) {
            response.setContentType("text/html; charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("Пароль не может быть пустым");
        }
        else {
            if(newEmail.equals(" ") || newEmail.isEmpty())
            {
                newEmail = null;
            }

            User updateUser = new User();
            updateUser.setName(newUsername);
            updateUser.setPassword(newPass);
            updateUser.setEmail(newEmail);

            Login dao = new Login();
            String result = dao.updateUser(updateUser, loggedUser.getUser_id());

            if (result.equals("Success")) {
                response.setContentType("text/html; charset=utf-8");
                PrintWriter out = response.getWriter();
              /*  out.println("<span style=\"color: red; font-size: 18px\" id=\"changeResult\">Пользователь обновлен</span>");*/
                out.println("Пользователь обновлен");
            } else {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("не удалось обновить данные");
              /*  out.println("<span style=\"color: red; font-size: 18px\" id=\"changeResult\">Не удалось обновить данные</span>");*/
            }
        }

    }
}
