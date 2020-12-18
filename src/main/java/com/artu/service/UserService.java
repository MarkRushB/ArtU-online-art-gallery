package com.artu.service;

import com.artu.entity.User;
import com.artu.utils.Response;

import java.util.List;


public interface UserService {
    User getUser(int id);

    User getUser(String nameOrEmail);

    void addUser(User user);

    //推荐写法
    Response deleteUser(int id);

    boolean updateUser(User user);

    List<User> getAllUser();
}
