package com.createros.test;


import com.createros.services.EmailService;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SendEmailTest {
    @Test
    public void sendEmail() throws Exception {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        EmailService emailService = (EmailService) applicationContext.getBean("emailServiceImpl");
        emailService.sendMailSimple("2697007709@qq.com","Hello","CreaterOS");
    }
}
