package com.qn.furnitue.model;

import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@ToString
public class User implements Serializable {
    private String uid;

    private String uloginname;

    private String upassword;

    private String uname;

    private String sex;

    private Integer uage;

    private Date utime;

    private String uphone;

    private String uemail;

    private Date ulogintime;

    private Date ulastLogi;

    private Integer ucount;

    private Integer urole;

    private Integer urepassword;
    /*
    * 手机号注册需要的参数
    * */
    private static final long serialVersionUID = 1L;
    private int status;
    private String msg;
    private Object data;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public User(String uid, String uloginname, String upassword, String uname, String sex, Integer uage, Date utime, String uphone, String uemail, Date ulogintime, Date ulastLogi, Integer ucount, Integer urole, Integer urepassword) {
        this.uid = uid;
        this.uloginname = uloginname;
        this.upassword = upassword;
        this.uname = uname;
        this.sex = sex;
        this.uage = uage;
        this.utime = utime;
        this.uphone = uphone;
        this.uemail = uemail;
        this.ulogintime = ulogintime;
        this.ulastLogi = ulastLogi;
        this.ucount = ucount;
        this.urole = urole;
        this.urepassword = urepassword;
    }

    public User() {
        super();
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getUloginname() {
        return uloginname;
    }

    public void setUloginname(String uloginname) {
        this.uloginname = uloginname;
    }

    public String getUpassword() {
        return upassword;
    }

    public void setUpassword(String upassword) {
        this.upassword = upassword;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getUage() {
        return uage;
    }

    public void setUage(Integer uage) {
        this.uage = uage;
    }

    public Date getUtime() {
        return utime;
    }

    public void setUtime(Date utime) {
        this.utime = utime;
    }

    public String getUphone() {
        return uphone;
    }

    public void setUphone(String uphone) {
        this.uphone = uphone;
    }

    public String getUemail() {
        return uemail;
    }

    public void setUemail(String uemail) {
        this.uemail = uemail;
    }

    public Date getUlogintime() {
        return ulogintime;
    }

    public void setUlogintime(Date ulogintime) {
        this.ulogintime = ulogintime;
    }

    public Date getUlastLogi() {
        return ulastLogi;
    }

    public void setUlastLogi(Date ulastLogi) {
        this.ulastLogi = ulastLogi;
    }

    public Integer getUcount() {
        return ucount;
    }

    public void setUcount(Integer ucount) {
        this.ucount = ucount;
    }

    public Integer getUrole() {
        return urole;
    }

    public void setUrole(Integer urole) {
        this.urole = urole;
    }

    public Integer getUrepassword() {
        return urepassword;
    }

    public void setUrepassword(Integer urepassword) {
        this.urepassword = urepassword;
    }
}