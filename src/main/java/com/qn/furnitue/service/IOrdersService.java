package com.qn.furnitue.service;

import com.qn.furnitue.model.Orders;
import com.qn.furnitue.util.PageBean;

import java.util.List;

public interface IOrdersService {
    /**
     * 新建添加
     * @param record
     * @return
     */
    int insertOrders(Orders record);

    /**
     * 订单查询
     * @param orders
     * @return
     */
    List<Orders> queryOredesPager(Orders orders, PageBean pageBean);

    /**
     * 判断创建订单号是否存在
     * @param orders
     * @return
     */
    List<Orders> queryOrdesUser(Orders orders);

    /**
     * 删除订单
     * @param orders
     * @return
     */
    int deleteOrders(Orders orders);


    /**
     * 修改订单
     * @param orders
     * @return
     */
    int updateOrders(Orders orders);
}