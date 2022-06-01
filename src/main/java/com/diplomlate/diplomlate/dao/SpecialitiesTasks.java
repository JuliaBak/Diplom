package com.diplomlate.diplomlate.dao;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.Speciality;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static com.diplomlate.diplomlate.dao.StudyAreasTasks.sa_specialities;

public class SpecialitiesTasks {

    public static List<Speciality> specialities = new ArrayList<>();

    public static Speciality searchedSpec = new Speciality();

    public String ShowAllSpecialities() {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * FROM specialities ";

        //Speciality speciality = new Speciality();

        int i = 0;
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);;
            ResultSet rs = preparedStatement.executeQuery();

            while(rs.next())
            {
                Speciality speciality = new Speciality();
                speciality.setSpec_id(rs.getInt("spec_id"));
                speciality.setSpec_name(rs.getString("spec_name"));
                speciality.setSpec_number(rs.getString("spec_number"));
                speciality.setSpec_description(rs.getString("spec_description"));
                speciality.setSpec_sa_id(rs.getInt("spec_sa_id"));
                specialities.add(speciality);

                System.out.println(speciality.getSpec_id()+"here");
                i++;
            }

          //  i = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if (i != 0) {
            return "Success";
        } else {
            return "Error!!!!";
        }
    }

    public Speciality FindSpecById(int spec_id)
    {
        for (Speciality spec : specialities) {
            if ((spec.getSpec_id() == spec_id)) {
                return searchedSpec = spec;
            }
        }
        return null;
    }
}
