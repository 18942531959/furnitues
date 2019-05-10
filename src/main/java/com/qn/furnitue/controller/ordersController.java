package com.qn.furnitue.controller;

import com.qn.furnitue.model.Orders;
import com.qn.furnitue.service.IOrdersService;
import com.qn.furnitue.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/*
* 订单controller
* */
@Controller
public class ordersController {
    @Autowired
    private IOrdersService iOrdersService;


    /**
     * 添加订单和客户信息
     *
     * @param orders
     * @param req
     * @return
     */
    @RequestMapping("/addOdres")
    @ResponseBody
    public Map<String, Object> addOdres(Orders orders, HttpServletRequest req) {
        //获取登入帐号
        orders.setOloginname("123123");
        //获取值
        String coid = req.getParameter("oid");
        //遍历初订单编号
        String oid=null;
        List<Orders> orders1 = iOrdersService.queryOrdesUser(orders);
        for (Orders orders2 : orders1) {
            oid=orders2.getOid();
        }
            //判断订单号是否相同
            if (coid.equals(oid)) {
                Map<String, Object> map = new HashMap<>();
                map.put("success", true);
                map.put("message", "订单已存在!!!");
                return map;
            } else {
                //添加订单信息
                iOrdersService.insertOrders(orders);
                Map<String, Object> map = new HashMap<>();
                map.put("success", true);
                map.put("message", "添加成功");
                return map;
            }
    }


    /**
     *订单查询
     * @param orders
     * @param req
     * @return
     */
    @RequestMapping("/queryOrders")
    @ResponseBody
    public Map<String, Object> queryOrdersPager(Orders orders, HttpServletRequest req) {
        //获取分页
        PageBean pageBean = new PageBean();
        pageBean.setRequest(req);
        //获取登入帐号
        orders.setOloginname("123123");
        List<Orders> orders1 = iOrdersService.queryOredesPager(orders,pageBean);
        Map<String, Object> map = new HashMap<>();
        map.put("data", orders1);
        map.put("count", pageBean.getTotal());
        map.put("code", 0);
        return map;
    }

    /**
     * 删除订单
     * @param orders
     * @return
     */
    @RequestMapping("/deleteOrders")
    @ResponseBody
    public Map<String, Object> deleteOrders(Orders orders,HttpServletRequest req) {
        int i = iOrdersService.deleteOrders(orders);
        Map<String, Object> map = new HashMap<>();
        map.put("success", true);
        map.put("message", "删除成功");
        return map;
    }

    /**
     * 修改订单
     * @param orders
     * @return
     */
    @RequestMapping("/updateOrders")
    @ResponseBody
    public Map<String, Object> updateOrders(Orders orders, HttpServletRequest req) {
            //修改订单信息
            int i = iOrdersService.updateOrders(orders);
            Map<String, Object> map = new HashMap<>();
            map.put("success", true);
            map.put("message", "修改成功");
            return map;
    }
}
