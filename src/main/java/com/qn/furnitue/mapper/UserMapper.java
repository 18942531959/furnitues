package com.qn.furnitue.mapper;

import com.qn.furnitue.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    int insert(User record);
    /*
    * 用户登录
    * */
    User queryUser(User user);
}