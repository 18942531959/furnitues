package com.qn.furnitue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.servlet.http.HttpSession;
import java.util.Locale;

@Controller
public class indexController {
    /**
     * 欢迎页面的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/index.shtml")
    public String toindex(HttpSession session){
       session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "producer/producerLogin";
    }

    /**
     * 浏览全城家具建材市场页面的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/consumer")
    public String toConsumer(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "consumer/consumer";
    }

    /**
     * 注册页面的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/produreReg")
    public String toprodureReg(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "producer/produre-reg";
    }
    /**
     * 设计/拆单页面的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/Produce")
    public String toProduce(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "producer/producer-index";
    }

    /**
     * 设计/拆单页面的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/producerLogin")
    public String toProduceLogin(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "producer/producerLogin";
    }

    /**
     * 进入后台页面
     * @param session
     * @return
     */
    @RequestMapping("/home/index")
    public String toHindex(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "index";
    }

    /**
     * 进入修改页面
     * @param session
     * @return
     */
    @RequestMapping("/home/updateorder")
    public String toupdateorder(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "order/update-order";
    }


    /**
     * 进入消费者注册页面
     * @param session
     * @return
     */
    @RequestMapping("/home/produrereg")
    public String toReg(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "producer/produre-reg";
    }


    /**
     * 新建订单的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/order")
    public String toOrder(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "order/new-order";
    }

    /**
     * 新建订单查询的跳转
     * @param session
     * @return
     */
    @RequestMapping("/home/queryorder")
    public String toqueryOrder(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "order/query-order";
    }

    /**
     * 手机验证码登录
     * @param session
     * @return
     */
    @RequestMapping("/home/forgetPwd")
    public String tofindforgetPwd(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "producer/produre-forgetPwd";
    }

    /**
     * 云订单系统跳转页面
     * @param session
     * @return
     */
    @RequestMapping("/indent/orderIndex")
    public String toorderIndex(HttpSession session){
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, Locale.CHINA);
        return "indent/orderIndex";
    }

}
