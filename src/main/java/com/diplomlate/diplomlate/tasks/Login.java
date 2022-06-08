package com.diplomlate.diplomlate.tasks;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.User;
import com.diplomlate.diplomlate.model.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static com.diplomlate.diplomlate.entities.User.loggedUser;

public class Login implements Dao {

    List<User> users;
    String sql="SELECT * FROM users WHERE user_name=? AND user_password=?";

    String sqlAll ="SELECT * FROM users;";
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
                if(!email.isEmpty() || email != null) {
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

    public String updateUser(User user)
    {
        Connection con = DBConnection.getConnection();

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(updateSql);

            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setInt(4, user.getUser_id());

            int rs = ps.executeUpdate();

            if (rs !=0 ) {

                loggedUser = user;
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

    @Override
    public List<User> getAllObjects() {
        users = new ArrayList<>();

        Connection con = DBConnection.getConnection();
        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(sqlAll);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                User user = new User();
                user.setName(rs.getString("user_name"));
                user.setPassword(rs.getString("user_password"));
                user.setUser_id(rs.getInt("user_id"));

                String email = rs.getString("user_email");
                if( email != null) {
                    if(!email.isEmpty()){
                    user.setEmail(email);
                    }
                }
                else {
                    user.setEmail(null);
                }
                users.add(user);
                i++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        if ((i != 0)) {
            return users;
        } else {
            return null;
        }

    }

    @Override
    public Object getObjectById(int id) {
        return null;
    }

    @Override
    public String updateObject(Object user) {
        return updateUser((User) user);
    }

    @Override
    public void deleteObject(Object object) {

    }
}
