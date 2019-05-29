package com.qn.furnitue.mapper;

import com.qn.furnitue.model.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    int insertUser(User record);
    /*
    * 用户登录
    * */
    User queryUser(User user);

    /*
    * 查询用户信息
    * */
    User querySinggeUser(User user);

    /*
    * 修改用户密码
    * */
    User updateUser(User user);
}