package com.qn.furnitue.service;

import com.qn.furnitue.model.User;

public interface IUserService {
    int insertUser(User record);

    User querUser(User user);


}