package com.maple.mapper;

import com.maple.pojo.User;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface UserMapper {

     User login(User user);
     int addUser(User user);
     User getUserByName(String name);
     User selectUserById(int id);
}
