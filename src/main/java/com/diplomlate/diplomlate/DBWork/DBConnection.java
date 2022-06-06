package com.diplomlate.diplomlate.DBWork;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    public static Connection getConnection()
    {
        Connection con = null;

        String url = "jdbc:mysql://127.0.0.1:3306/diplomdb?useUnicode=true&serverTimezone=UTC";
        String user = "diplom";
        String password = "diplom";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return con;
    }

    public void CloseConnection(Connection con) throws SQLException {
        con.close();
    }

}
