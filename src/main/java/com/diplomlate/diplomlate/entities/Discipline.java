package com.diplomlate.diplomlate.entities;

public class Discipline {

    private int discipline_id;
    private String discipline_name;

    public Discipline() {
    }

    public Discipline(int discipline_id, String discipline_name)
    {
        this.discipline_id = discipline_id;
        this.discipline_name = discipline_name;
    }

    public String getDiscipline_name()
    {
        return discipline_name;
    }

    public void setDiscipline_name(String discipline_name)
    {
        this.discipline_name = discipline_name;
    }

    public int getDiscipline_id()
    {  return  discipline_id;}

    public void setDiscipline_id(int discipline_id)
    {
        this.discipline_id = discipline_id;
    }
}
