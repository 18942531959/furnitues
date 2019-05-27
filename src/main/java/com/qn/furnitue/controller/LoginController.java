package com.qn.furnitue.controller;

import com.qn.furnitue.model.User;
import com.qn.furnitue.service.IUserService;
import com.qn.furnitue.util.GetMessageCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;


@Controller
public class LoginController {

    @Autowired
    private IUserService userService;


    @RequestMapping("/loginUser")
    @ResponseBody
    public Map<String ,Object> queryUser(User user) {
        Map<String ,Object> map=new HashMap<String, Object>();
        User queryuser = userService.querUser(user);
        if (null==queryuser){
            map.put("success",false);
            map.put("query",queryuser);
            map.put("message","账号或密码错误");
        }else {
            map.put("success", true);
            map.put("query", queryuser);
            map.put("message", "登录成功");
        }
        return map;
    }
    /*
    *短信验证码
    * */
    @RequestMapping("/regitstUser")
    public @ResponseBody User sendSMS(User user){
        //根据获取到的手机号发送验证码
        String code= GetMessageCode.getCode(user.getUphone());
        user.setStatus(1);//验证码状态
        user.setData(code);//手机号
        return user;
    }
    @RequestMapping("/UserRe")
    @ResponseBody
    public Map<String,Object> UserRe(User user){
        String uphone = user.getUphone();
        //根据手机号查询是否被注册过 如果被注册过 无法进去注册方法
        //如果没有被注册过进入注册方法，页面返回false，反之true
        user.setUid(UUID.randomUUID().toString().replace("-",""));
        userService.insertUser(user);
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("success",true);
        return map;
    }
}
