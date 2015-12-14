package com.service.Impl;

import com.dao.IUserDao;
import com.model.User;
import com.service.IUserService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yufanyang on 12/9/2015.
 */
@Service("userService")
public class UserServiceImpl implements IUserService {
    private IUserDao userDao;

    public IUserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(IUserDao userDao) {
        this.userDao = userDao;
    }

    public List<User> getUsers() {
        List<User> userList=new ArrayList<User>();
        userList.add(new User());
        return userList;
    }
}
