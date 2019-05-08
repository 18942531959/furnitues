package src.main.java.com.qn.furnitue.model;

import lombok.ToString;

import java.util.Date;

@ToString
public class User {
    private Integer uid;

    private String uloginnam;

    private String upassword;

    private String uname;

    private String sex;

    private Integer uage;

    private Date utime;

    private String uphone;

    private String uemail;

    private Date ulogintim;

    private Date ulastlogi;

    private Long ucount;

    private Long urole;

    public User(Integer uid, String uloginnam, String upassword, String uname, String sex, Integer uage, Date utime, String uphone, String uemail, Date ulogintim, Date ulastlogi, Long ucount, Long urole) {
        this.uid = uid;
        this.uloginnam = uloginnam;
        this.upassword = upassword;
        this.uname = uname;
        this.sex = sex;
        this.uage = uage;
        this.utime = utime;
        this.uphone = uphone;
        this.uemail = uemail;
        this.ulogintim = ulogintim;
        this.ulastlogi = ulastlogi;
        this.ucount = ucount;
        this.urole = urole;
    }

    public User() {
        super();
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUloginnam() {
        return uloginnam;
    }

    public void setUloginnam(String uloginnam) {
        this.uloginnam = uloginnam;
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

    public Date getUlogintim() {
        return ulogintim;
    }

    public void setUlogintim(Date ulogintim) {
        this.ulogintim = ulogintim;
    }

    public Date getUlastlogi() {
        return ulastlogi;
    }

    public void setUlastlogi(Date ulastlogi) {
        this.ulastlogi = ulastlogi;
    }

    public Long getUcount() {
        return ucount;
    }

    public void setUcount(Long ucount) {
        this.ucount = ucount;
    }

    public Long getUrole() {
        return urole;
    }

    public void setUrole(Long urole) {
        this.urole = urole;
    }
}