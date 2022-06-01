package com.diplomlate.diplomlate.tasks;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Login {
    public boolean validateUser(User user)
    {
        boolean result = false;
        Connection connection= DBConnection.getConnection();
        String sql="SELECT * FROM users WHERE user_name=? AND user_password=?";
        try {
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setString(1, user.getName());
            ps.setString(2, user.getPassword());
            ResultSet rs=ps.executeQuery();
            result=rs.next();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }
}