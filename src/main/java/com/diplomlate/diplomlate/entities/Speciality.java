package com.diplomlate.diplomlate.entities;

public class Speciality {
    private String spec_name;
    private String spec_number;
    private String spec_description;

    private String promo_video;

    private int spec_sa_id;

    private int spec_id;

    public Speciality() {
    }

    public Speciality(int spec_id, String spec_name, String spec_number, String spec_description, int spec_sa_id)
    {
        this.spec_id = spec_id;
        this.spec_name = spec_name;
        this.spec_number = spec_number;
        this.spec_description = spec_description;
        this.spec_sa_id = spec_sa_id;
    }

    public String getSpec_name()
    {
        return spec_name;
    }

    public void setSpec_name(String spec_name)
    {
        this.spec_name = spec_name;
    }

    public String getSpec_number()
    {
        return spec_number;
    }

    public void setSpec_number(String spec_number)
    {
        this.spec_number = spec_number;
    }

    public String getSpec_description()
    {
        return spec_description;
    }

    public void setSpec_description(String spec_description)
    {
        this.spec_description = spec_description;
    }

    public int getSpec_sa_id()
    {
        return  spec_sa_id;
    }

    public  void setSpec_sa_id(int spec_sa_id)
    {
        this.spec_sa_id = spec_sa_id;
    }

    public int getSpec_id()
    {
        return  spec_id;
    }

    public  void setSpec_id(int spec_id)
    {
        this.spec_id = spec_id;
    }

    public String getPromo_video()
    {
        return promo_video;
    }

    public void setPromo_video(String promo_video)
    {
        this.promo_video = promo_video;
    }

}
