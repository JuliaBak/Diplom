package com.diplomlate.diplomlate.entities;

public class StudyArea {

    private String sa_name;
    private String sa_description;

    private int sa_id;

    public StudyArea() {
    }

    public StudyArea(String sa_name, String sa_description, int sa_id)
    {
        this.sa_name = sa_name;
        this.sa_description = sa_description;
        this.sa_id = sa_id;
    }

    public String getSa_name()
    {
        return sa_name;
    }

    public void setSa_name(String sa_name)
    {
        this.sa_name = sa_name;
    }

    public String getSa_description()
    {
        return sa_description;
    }

    public void setSa_description(String sa_description)
    {
        this.sa_description = sa_description;
    }

    public int getSa_id()
    {
        return sa_id;
    }

    public void setSa_id(int sa_id)
    {
        this.sa_id = sa_id;
    }
}
