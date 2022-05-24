package com.diplomlate.diplomlate.entities;

public class StudyArea {

    private String sa_name;
    private String sa_description;

    public StudyArea() {
    }

    public StudyArea(String sa_name, String sa_description)
    {
        this.sa_name = sa_name;
        this.sa_description = sa_description;
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
}
