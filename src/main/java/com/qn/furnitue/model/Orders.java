package com.qn.furnitue.model;

import lombok.ToString;

@ToString
public class Orders {
    private String oid;

    private String oname;

    private String odealer;

    private String ophone;

    private String ordertime;

    private String odeliverytime;

    private String opartorder;

    private String oaddress;

    private String ologinname;

    private String oremark;

    public Orders(String oid, String oname, String odealer, String ophone, String ordertime, String odeliverytime, String opartorder, String oaddress, String ologinname, String oremark) {
        this.oid = oid;
        this.oname = oname;
        this.odealer = odealer;
        this.ophone = ophone;
        this.ordertime = ordertime;
        this.odeliverytime = odeliverytime;
        this.opartorder = opartorder;
        this.oaddress = oaddress;
        this.ologinname = ologinname;
        this.oremark = oremark;
    }

    public Orders() {
        super();
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getOdealer() {
        return odealer;
    }

    public void setOdealer(String odealer) {
        this.odealer = odealer;
    }

    public String getOphone() {
        return ophone;
    }

    public void setOphone(String ophone) {
        this.ophone = ophone;
    }

    public String getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(String ordertime) {
        this.ordertime = ordertime;
    }

    public String getOdeliverytime() {
        return odeliverytime;
    }

    public void setOdeliverytime(String odeliverytime) {
        this.odeliverytime = odeliverytime;
    }

    public String getOpartorder() {
        return opartorder;
    }

    public void setOpartorder(String opartorder) {
        this.opartorder = opartorder;
    }

    public String getOaddress() {
        return oaddress;
    }

    public void setOaddress(String oaddress) {
        this.oaddress = oaddress;
    }

    public String getOloginname() {
        return ologinname;
    }

    public void setOloginname(String ologinname) {
        this.ologinname = ologinname;
    }

    public String getOremark() {
        return oremark;
    }

    public void setOremark(String oremark) {
        this.oremark = oremark;
    }
}