package com.qn.furnitue.service.imp;

import com.qn.furnitue.mapper.ClientMapper;
import com.qn.furnitue.model.Client;
import com.qn.furnitue.service.IClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientServiceImpl implements IClientService {

    @Autowired
    private ClientMapper clientMapper;

    @Override
    public int insertClient(Client client) {
        return clientMapper.insertClient(client);
    }
}
