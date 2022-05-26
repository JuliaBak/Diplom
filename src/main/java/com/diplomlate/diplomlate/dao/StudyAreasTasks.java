package com.diplomlate.diplomlate.dao;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.Speciality;
import com.diplomlate.diplomlate.entities.StudyArea;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudyAreasTasks {

    public static List<StudyArea> study_areas = new ArrayList<>();
    public static List<Speciality> sa_specialities = new ArrayList<>();

    public static StudyArea searchedSA  = new StudyArea();

    public String ShowAllStudyAreas() {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * FROM study_areas ";

        int i = 0;
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);;
            ResultSet rs = preparedStatement.executeQuery();

            while(rs.next())
            {
                StudyArea sa_area = new StudyArea();
                sa_area.setSa_name(rs.getString("sa_name"));
                sa_area.setSa_description(rs.getString("sa_description"));
                sa_area.setSa_id(rs.getInt("sa_id"));
                study_areas.add(sa_area);
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
            return "Error!!";
        }
    }

    public String SearchSASpecialitiesBySpecID(String SA) {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * FROM specialities WHERE spec_sa_id=? ";

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(sql);
            ps.setInt(1, Integer.parseInt(SA));
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Speciality speciality = new Speciality();
                speciality.setSpec_name(rs.getString("spec_name"));
                speciality.setSpec_description(rs.getString("spec_description"));
                speciality.setSpec_number(rs.getString("spec_number"));

                sa_specialities.add(speciality);
                i++;
            }

//            result = rs.next();
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

    public StudyArea FindSAinList(String id)
    {
        for (StudyArea SA : study_areas) {
            if (SA.getSa_id() == Integer.parseInt(id)) {
               return searchedSA = SA;
            }
        }
        return null;
    }

}
