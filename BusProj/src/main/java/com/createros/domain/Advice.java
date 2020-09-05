package com.createros.domain;

import java.util.Date;

public class Advice {
    private String message; //意见/建议
    private String route; //路线
    private String phoneNumber; //电话号码
    private String emailAddress; //邮箱地址
    private String location; //地理位置
    private String sendTime; //发送时间

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getRoute() {
        return route;
    }

    public void setRoute(String route) {
        this.route = route;
    }

    public String getSendTime() {
        return sendTime;
    }

    public void setSendTime(String sendTime) {
        this.sendTime = sendTime;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLocation() {
        return location;
    }

    @Override
    public String toString() {
        return "Advice{" +
                "message='" + message + '\'' +
                ", route='" + route + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", emailAddress='" + emailAddress + '\'' +
                ", location='" + location + '\'' +
                ", sendTime='" + sendTime + '\'' +
                '}';
    }
}
