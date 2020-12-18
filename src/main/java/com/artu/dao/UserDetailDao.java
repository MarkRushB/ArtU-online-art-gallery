package com.artu.dao;

import com.artu.entity.UserDetail;

import java.util.List;


public interface UserDetailDao {

    public UserDetail getUserDetail(int id);

    public void addUserDetail(UserDetail userDetail);

    public boolean deleteUserDetail(int id);

    public boolean updateUserDetail(UserDetail userDetail);

    public List<UserDetail> getAllUserDetail();
}
