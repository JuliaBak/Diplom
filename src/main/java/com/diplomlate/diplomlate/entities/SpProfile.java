package com.diplomlate.diplomlate.entities;

public class SpProfile {

    private String sp_prof_name;
    private String sp_prof_description;

    private int sp_prof_spec_id;

    private int sp_prof_id;

    public SpProfile() {
    }

    public SpProfile(int sp_prof_id, String sp_prof_name, String sp_prof_description, int sp_prof_spec_id)
    {
        this.sp_prof_id = sp_prof_id;
        this.sp_prof_name = sp_prof_name;
        this.sp_prof_description = sp_prof_description;
        this.sp_prof_spec_id = sp_prof_spec_id;
    }

    public String getSp_prof_name()
    {
        return sp_prof_name;
    }

    public void setSp_prof_name(String sp_prof_name)
    {
        this.sp_prof_name = sp_prof_name;
    }

    public String getSp_prof_description()
    {
        return sp_prof_description;
    }

    public void setSp_prof_description(String sp_prof_description)
    {
        this.sp_prof_description = sp_prof_description;
    }

    public int getSp_prof_spec_id()
    {
        return  sp_prof_spec_id;
    }

    public  void setSp_prof_spec_id(int sp_prof_spec_id)
    {
        this.sp_prof_spec_id = sp_prof_spec_id;
    }

    public int getSp_prof_id()
    {
        return  sp_prof_id;
    }

    public  void setSp_prof_id(int sp_prof_id)
    {
        this.sp_prof_id = sp_prof_id;
    }
}
