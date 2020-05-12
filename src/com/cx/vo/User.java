package com.cx.vo;

public class User {


    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }


    public User(int uid, String uname, double price, String loc, String desc) {
        this.uid = uid;
        this.uname = uname;
        this.price = price;
        this.loc = loc;
        this.desc = desc;
    }


    @Override
    public String toString() {
        return "user{" +
                "uid=" + uid +
                ", uname='" + uname + '\'' +
                ", price=" + price +
                ", loc='" + loc + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }
        public User() {
                 super();
        }
    private int uid;
    private String uname;
    private double price;
    private String loc;
    private String desc;
}
