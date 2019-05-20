package com.qn.furnitue.service.imp;

import com.qn.furnitue.mapper.UserMapper;
import com.qn.furnitue.model.User;
import com.qn.furnitue.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Transactional
    @Override
    public int insertUser(User record) {
        return userMapper.insertUser(record);
    }
    @Transactional
    @Override
    public User querUser(User user) {
        return userMapper.queryUser(user);
    }

}
