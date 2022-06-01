package com.diplomlate.diplomlate.tasks;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.Speciality;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SpecRegisterDao {
    public String RegisterSpecInDB(Speciality speciality) {
        Connection con = DBConnection.getConnection();
        String sqlInsert = "INSERT INTO diplomdb.specialities (spec_name, spec_number, spec_description, spec_sa_id) values (?,?,?,?) ";

        int i = 0;
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sqlInsert);
            preparedStatement.setString(1, speciality.getSpec_name());
            preparedStatement.setString(2, speciality.getSpec_number());
            preparedStatement.setString(3, speciality.getSpec_description());
            preparedStatement.setInt(4, speciality.getSpec_sa_id());
            i = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if (i != 0) {
            return "Speciality is registered";
        } else {
            return "Error!!!!";
        }
    }
}
