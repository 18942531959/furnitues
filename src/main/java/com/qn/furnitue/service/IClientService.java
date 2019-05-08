package com.qn.furnitue.service;

import com.qn.furnitue.model.Client;

public interface IClientService {

    /**
     * 添加客户
     * @param client
     * @return
     */
    int insertClient(Client client);


}