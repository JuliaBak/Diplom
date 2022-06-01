package com.diplomlate.diplomlate.dao;

import com.diplomlate.diplomlate.DBWork.DBConnection;
import com.diplomlate.diplomlate.entities.Discipline;
import com.diplomlate.diplomlate.entities.Job;
import com.diplomlate.diplomlate.entities.SpProfile;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SpProfilesTasks {

    /**
     * All profiles
     */
    public static List<SpProfile> spProfiles = new ArrayList<>();

    /**
     * Many speciality profiles you are searching for, referring to one speciality
     */
    public static List<SpProfile> searchedSpProfiles = new ArrayList<>();


    /**
     * One speciality profile you are searching for
     */
    public static SpProfile searchedSpProf = new SpProfile();


    /**
     * The disciplines for a specific profile
     */
    public static List<Discipline> disciplines = new ArrayList<>();

    /**
     * The jobs for a specific profile
     */
    public static List<Job> jobs = new ArrayList<>();

    /**
     * One specific discipline you are searching for
     */
    public static Discipline searchedDiscipline = new Discipline();


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

    public SpProfile FindSpProfById(int sp_prof_id)
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

    public String SearchDisciplinesByProdId(int sp_prof_id) {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * " +
                "FROM disciplines dis " +
                "JOIN prof_disciplines_con pd on dis.discipline_id = pd.discipline_id " +
                "JOIN sp_profiles prof on pd.sp_prof_id = prof.sp_profile_id " +
                "WHERE prof.sp_profile_id = ? ";

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(sql);
            ps.setInt(1, sp_prof_id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Discipline discipline = new Discipline();
                discipline.setDiscipline_id(rs.getInt("discipline_id"));
                discipline.setDiscipline_name(rs.getString("discipline_name"));

                disciplines.add(discipline);
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

    public String SearchJobsByProfId(int sp_prof_id) {
        Connection con = DBConnection.getConnection();
        String sql ="SELECT * " +
                "FROM jobs job " +
                "JOIN sp_prof_jobs_con pj on job.job_id = pj.job_id " +
                "JOIN sp_profiles prof on pj.sp_prof_id = prof.sp_profile_id " +
                "WHERE prof.sp_profile_id = ? ";

        int i = 0;
        try {
            PreparedStatement ps= con.prepareStatement(sql);
            ps.setInt(1, sp_prof_id);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Job job = new Job();
                job.setJob_id(rs.getInt("job_id"));
                job.setJob_name(rs.getString("job_name"));

                jobs.add(job);
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
