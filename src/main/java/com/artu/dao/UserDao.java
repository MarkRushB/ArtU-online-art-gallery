package com.artu.dao;

import com.artu.entity.User;

import java.util.List;


public interface UserDao {

    public User getUser(int id);

    public User getUser(String nameOrEmail);

    public void addUser(User user);

    public boolean deleteUser(int id);

    public boolean updateUser(User user);

    public List<User> getAllUser();
}
