package com.controller;

import com.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.service.IUserService;

import java.util.List;

/**
 * Created by yufanyang on 12/9/2015.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;
    @RequestMapping("/login")
    public String login(User user){
        List<User> userList=userService.getUsers();
        if(userList.size()>0)
        {
            return "welcome";
        }else{
            return "login";
        }
    }
    @RequestMapping("/check")
    public @ResponseBody String login(String account){

        return "account is valid";
    }

    public IUserService getUserService() {
        return userService;
    }

    public void setUserService(IUserService userService) {
        this.userService = userService;
    }
}
