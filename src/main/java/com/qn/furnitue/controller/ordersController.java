package com.qn.furnitue.controller;

import com.qn.furnitue.model.Client;
import com.qn.furnitue.model.Orders;
import com.qn.furnitue.service.IClientService;
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

@Controller
public class ordersController {
    @Autowired
    private IOrdersService iOrdersService;

    @Autowired
    private IClientService iClientService;

    /**
     * 添加订单和客户信息
     * @param orders
     * @param req
     * @return
     */
    @RequestMapping("/addOdres")
    @ResponseBody
    public Map<String, Object> addOdres(Orders orders, HttpServletRequest req) {
        //获取登入帐号
        orders.setOloginname("123456");
        //获取值
        String coid=req.getParameter("oid");
        String cname=req.getParameter("cname");
        String caddress=req.getParameter("caddress");
        String cphone=req.getParameter("cphone");
        //遍历初订单编号
        List<Orders> orders1 = iOrdersService.queryOrdesUser(orders);
        for (Orders orders2 : orders1) {
            String oid = orders2.getOid();
            //判断订单号是否相同
            if (!coid.equals(oid)) {
                //添加订单信息
                iOrdersService.insertOrders(orders);
                //添加客户信息
                Client client = new Client();
                client.setCoid(coid);
                client.setCname(cname);
                client.setCaddress(caddress);
                client.setCphone(cphone);
                iClientService.insertClient(client);
                Map<String, Object> map = new HashMap<>();
                map.put("success", true);
                map.put("message", "添加成功");
                return map;
            } else {
                Map<String, Object> map = new HashMap<>();
                map.put("success", true);
                map.put("message", "订单号已存在!!!");
                return map;

            }
        }
        return null;
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
        PageBean pageBean = new PageBean();
        pageBean.setRequest(req);
        orders.setOloginname("123456");
        List<Orders> orders1 = iOrdersService.queryOredesPager(orders,pageBean);
        Map<String, Object> map = new HashMap<>();
        map.put("data", orders1);
        map.put("count", pageBean.getTotal());
        map.put("code", 0);
        return map;
    }

}
