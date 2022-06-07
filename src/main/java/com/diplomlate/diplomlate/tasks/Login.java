package com.diplomlate.diplomlate.tasks;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.Speciality;
import com.diplomlate.diplomlate.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import static com.diplomlate.diplomlate.entities.User.loggedUser;

public class Login {
    String sql="SELECT * FROM users WHERE user_name=? AND user_password=?";
    String updateSql = "UPDATE users SET user_name=?, user_email=?, user_password=? WHERE user_id=?";

    public boolean validateUser(User user)
    {
        boolean result = false;
        Connection connection= DBConnection.getConnection();
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

    public void setLoggedUser(User user)
    {
        loggedUser.setPassword("");
        loggedUser.setName("");
        loggedUser.setEmail("");
        loggedUser.setUser_id(1);

        Connection con = DBConnection.getConnection();

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(sql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getPassword());

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                User logUser = new User();
                logUser.setName(rs.getString("user_name"));
                logUser.setPassword(rs.getString("user_password"));
                logUser.setUser_id(rs.getInt("user_id"));

                String email = rs.getString("user_email");
                if(!email.isEmpty() || email == null) {
                    logUser.setEmail(email);
                }
                else {
                    logUser.setEmail(null);
                }
                i++;
                loggedUser = logUser;
            }

//            result = rs.next();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
       /* if ((i != 0)) {
            return "Success";
        } else {
            return "Error!!";
        }*/

    }

    public String updateUser(User user, int logged_user_id)
    {
        Connection con = DBConnection.getConnection();

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(updateSql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setInt(4, logged_user_id);

            int rs = ps.executeUpdate();

            if (rs !=0 ) {

                loggedUser = user;
                loggedUser.setUser_id(logged_user_id);
                i++;
            }

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if ((i != 0)) {
            return "Success";
        } else {
            return "Error!!";
        }

    }
}
