package com.atdongruan.bean;
public class User {
    private Integer uId;

    private String uPassword;

    private String uEmail;

    private String uMopile;

    private String uName;

    private String uImage;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword == null ? null : uPassword.trim();
    }

    public String getuEmail() {
        return uEmail;
    }

    public void setuEmail(String uEmail) {
        this.uEmail = uEmail == null ? null : uEmail.trim();
    }

    public String getuMopile() {
        return uMopile;
    }

    public void setuMopile(String uMopile) {
        this.uMopile = uMopile == null ? null : uMopile.trim();
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuImage() {
        return uImage;
    }

    public void setuImage(String uImage) {
        this.uImage = uImage == null ? null : uImage.trim();
    }




}