package com.maple.service;

import com.maple.mapper.UserMapper;
import com.maple.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Maple
 */
@Service
public class UserService {

    private UserMapper userMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public User login(User user){
        return userMapper.login(user);
    }

    public boolean addUser(User user){
        return userMapper.addUser(user)>0?true:false;
    }
    public boolean getUserByName(String name){
        return null != userMapper.getUserByName(name);
    }
    public User selectUserById(int id){
        return userMapper.selectUserById(id);
    }
}
