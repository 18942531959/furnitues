package src.main.java.com.qn.furnitue.service.imp;

import com.qn.furnitue.mapper.OrdersMapper;
import com.qn.furnitue.model.Orders;
import com.qn.furnitue.service.IOrdersService;
import com.qn.furnitue.util.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrdersServiceImpl implements IOrdersService {
    @Autowired
    private OrdersMapper ordersMapper;
    /**
     * 新建查询
     * @param record
     * @return
     */
    @Override
    public int insertOrders(Orders record) {
        return ordersMapper.insertOrders(record);
    }

    /**
     * 订单查询
     * @param orders
     * @return
     */
    @Override
    public List<Orders> queryOredesPager(Orders orders,PageBean pageBean) {
        return ordersMapper.queryOredesPager(orders);
    }

    /**
     * 判断创建订单号是否存在
     * @param orders
     * @return
     */
    @Override
    public List<Orders> queryOrdesUser(Orders orders) {
        return ordersMapper.queryOrdesUser(orders);
    }
}
