package com.qn.furnitue.controller;

import com.qn.furnitue.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class UserController {
    @Autowired
    private IUserService userService;


}
