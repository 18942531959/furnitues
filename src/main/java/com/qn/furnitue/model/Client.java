package com.qn.furnitue.model;

import lombok.ToString;

@ToString
public class Client {
    private Integer cid;

    private String coid;

    private String cname;

    private String cphone;

    private String caddress;

    public Client(Integer cid, String coid, String cname, String cphone, String caddress) {
        this.cid = cid;
        this.coid = coid;
        this.cname = cname;
        this.cphone = cphone;
        this.caddress = caddress;
    }

    public Client() {
        super();
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCoid() {
        return coid;
    }

    public void setCoid(String coid) {
        this.coid = coid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCphone() {
        return cphone;
    }

    public void setCphone(String cphone) {
        this.cphone = cphone;
    }

    public String getCaddress() {
        return caddress;
    }

    public void setCaddress(String caddress) {
        this.caddress = caddress;
    }
}