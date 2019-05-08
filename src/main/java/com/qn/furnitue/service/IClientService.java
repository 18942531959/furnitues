package src.main.java.com.qn.furnitue.service;

import com.qn.furnitue.model.Client;
import org.springframework.stereotype.Repository;

public interface IClientService {

    /**
     * 添加客户
     * @param client
     * @return
     */
    int insertClient(Client client);


}