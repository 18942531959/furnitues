package com.qn.furnitue.model;

public class Orders {
    private Integer coid;

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

    private String cname;

    private String cphone;

    private String caddress;

    public Orders(Integer coid, String oid, String oname, String odealer, String ophone, String ordertime, String odeliverytime, String opartorder, String oaddress, String ologinname, String oremark, String cname, String cphone, String caddress) {
        this.coid = coid;
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
        this.cname = cname;
        this.cphone = cphone;
        this.caddress = caddress;
    }

    public Orders() {
        super();
    }

    public Integer getCoid() {
        return coid;
    }

    public void setCoid(Integer coid) {
        this.coid = coid;
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