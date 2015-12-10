package com.dao;

import com.model.User;

import java.util.List;

/**
 * Created by yufanyang on 12/9/2015.
 */
public interface IUserDao {
    public List<User> getUsers(User user);
}
