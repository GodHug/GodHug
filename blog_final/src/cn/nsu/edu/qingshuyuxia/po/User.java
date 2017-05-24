package cn.nsu.edu.qingshuyuxia.po;

import java.util.Date;

public class User {
    
    private Integer id;

    
    private String username;

    
    private String userpassword;

    
    private String sex;

    
    private Date registerdata;

    
    private Date birthday;

    private String address;

    private String mailBox;

    private Integer fansnumber;

    
    private Integer attentionnumber;

    
    public Integer getId() {
        return id;
    }

    
    public void setId(Integer id) {
        this.id = id;
    }

    
    public String getUsername() {
        return username;
    }

    
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    
    public String getUserpassword() {
        return userpassword;
    }

    
    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

    
    public String getSex() {
        return sex;
    }

    
    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    
    public Date getRegisterdata() {
        return registerdata;
    }

    
    public void setRegisterdata(Date registerdata) {
        this.registerdata = registerdata;
    }

    
    public Date getBirthday() {
        return birthday;
    }

    
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    
    public Integer getFansnumber() {
        return fansnumber;
    }

    
    public void setFansnumber(Integer fansnumber) {
        this.fansnumber = fansnumber;
    }

    
    public Integer getAttentionnumber() {
        return attentionnumber;
    }

    
    public void setAttentionnumber(Integer attentionnumber) {
        this.attentionnumber = attentionnumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMailBox() {
        return mailBox;
    }

    public void setMailBox(String mailBox) {
        this.mailBox = mailBox;
    }
}