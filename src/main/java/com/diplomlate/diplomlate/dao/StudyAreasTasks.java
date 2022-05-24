package com.diplomlate.diplomlate.dao;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.StudyArea;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudyAreasTasks {

    public static List<StudyArea> study_areas = new ArrayList<>();

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
}
