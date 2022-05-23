package com.diplomlate.diplomlate.servlets;

import com.diplomlate.diplomlate.DBWork.DBConnection;

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

@WebServlet(name = "UserNameCheckServlet", urlPatterns = "/username-validation")
public class UserNameCheckServlet extends HttpServlet {

    Connection con = null;
    PreparedStatement sql = null;
    ResultSet rs = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        try {
            con = DBConnection.getConnection();
            sql = con.prepareStatement("SELECT * FROM users WHERE user_name=?");
            sql.setString(1, username);
            rs = sql.executeQuery();

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

}
