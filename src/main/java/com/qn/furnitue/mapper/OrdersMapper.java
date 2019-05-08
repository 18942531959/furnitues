package com.qn.furnitue.mapper;

import com.qn.furnitue.model.Orders;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrdersMapper {
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
    List<Orders> queryOredesPager(Orders orders);

    /**
     * 判断创建订单号是否存在
     * @param orders
     * @return
     */
    List<Orders> queryOrdesUser(Orders orders);
}