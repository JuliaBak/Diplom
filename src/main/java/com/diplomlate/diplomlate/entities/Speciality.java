package com.diplomlate.diplomlate.entities;

public class Speciality {
    private String spec_name;
    private String spec_number;
    private String spec_description;

    public Speciality() {
    }

    public Speciality(String spec_name, String spec_number, String spec_description)
    {
        this.spec_name = spec_name;
        this.spec_number = spec_number;
        this.spec_description = spec_description;
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
        return spec_name;
    }

    public void setSpec_description(String spec_description)
    {
        this.spec_description = spec_description;
    }

}