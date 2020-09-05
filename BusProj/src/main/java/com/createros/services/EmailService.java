package com.createros.services;

public interface EmailService {
    void sendMailSimple(String to,String subject,String content) throws Exception;
}
