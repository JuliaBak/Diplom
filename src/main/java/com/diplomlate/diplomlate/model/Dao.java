package com.diplomlate.diplomlate.model;

import com.diplomlate.diplomlate.entities.User;

import java.util.List;

public interface Dao <T> {
    public List<T> getAllObjects();
    public T getObjectById(int id);
    public String updateObject(T object);
    public void deleteObject(T object);
}
