package src.main.java.com.qn.furnitue.mapper;

import com.qn.furnitue.model.Client;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientMapper {
    /**
     * 添加客户
     * @param client
     * @return
     */
    int insertClient(Client client);


}