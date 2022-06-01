package com.diplomlate.diplomlate.dao;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.SpProfile;
import com.diplomlate.diplomlate.entities.Speciality;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SpProfilesTasks {

    public static List<SpProfile> spProfiles = new ArrayList<>();

    public static List<SpProfile> searchedSpProfiles = new ArrayList<>();

    public static SpProfile searchedSpProf = new SpProfile();

    public String ShowAllSpProf() {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * FROM sp_profiles ";

        int i = 0;
        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);;
            ResultSet rs = preparedStatement.executeQuery();

            while(rs.next())
            {
                SpProfile spProfile = new SpProfile();
                spProfile.setSp_prof_id(rs.getInt("sp_profile_id"));
                spProfile.setSp_prof_name(rs.getString("sp_profiles_name"));
                spProfile.setSp_prof_description(rs.getString("sp_profiles_description"));
                spProfile.setSp_prof_spec_id(rs.getInt("sp_prof_spec_id"));
                spProfiles.add(spProfile);
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

    public SpProfile FindSpProfByName(int sp_prof_id)
    {
        for (SpProfile spProf : spProfiles) {
            if ((spProf.getSp_prof_id() == (sp_prof_id))) {
                return searchedSpProf = spProf;
            }
        }
        return null;
    }

    public String SearchProfilesBySpecID(int spec_id) {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * FROM sp_profiles WHERE sp_prof_spec_id=? ";

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(sql);
            ps.setInt(1, spec_id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                SpProfile spProfile = new SpProfile();
                spProfile.setSp_prof_id(rs.getInt("sp_profile_id"));
                spProfile.setSp_prof_name(rs.getString("sp_profiles_name"));
                spProfile.setSp_prof_description(rs.getString("sp_profiles_description"));
                spProfile.setSp_prof_spec_id(rs.getInt("sp_prof_spec_id"));

                searchedSpProfiles.add(spProfile);
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
}
