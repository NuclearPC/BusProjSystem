package com.createros.services.impl;

import com.createros.services.EmailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.Date;
import java.util.Properties;

@Service
public class EmailServiceImpl implements EmailService {
    private static final Logger LOGGER = LoggerFactory.getLogger(EmailServiceImpl.class);
    private JavaMailSender javaMailSender;
    private SimpleMailMessage simpleMailMessage;

    /**
     * @方法名: sendMailSimple
     * @参数名：@param subject  邮件主题
     * @参数名：@param content 邮件内容
     * @参数名：@param to     收件人Email地址
     * @描述语: 发送邮件
     */
    @Override
    public void sendMailSimple(String to, String subject, String content) throws Exception {
        try {
            Properties properties = new Properties();

            properties.put("mail.smtp.host","smtp.qq.com");//发件人使用发邮件的电子信箱服务器
            properties.put("mail.password","myandvczlwbobcaj");
            properties.put("mail.transport.protocol", "smtp");
            properties.setProperty("mail.debug", "true");
            properties.put("mail.smtp.auth","true"); //这样才能通过验证

            properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            properties.put("mail.smtp.port", "465");
            properties.put("mail.smtp.socketFactory.port", "465");

            //获得默认的session对象
            Session mailSession = Session.getInstance(properties);
            mailSession.setDebug(true);


            MimeMessage mimeMessage = new MimeMessage(mailSession);

            InternetAddress from= new InternetAddress("******************");
            mimeMessage.setFrom(from);
            InternetAddress toEmail = new InternetAddress(to); //设置收件人地址并规定其类型
            mimeMessage.setRecipient(Message.RecipientType.TO,toEmail);

            mimeMessage.setSentDate(new Date()); 	//设置发信时间
            mimeMessage.setSubject(subject);
            mimeMessage.setText(content); 				//设置正文

            //给消息对象设置内容
            BodyPart bodyPart= new MimeBodyPart();					//新建一个存放信件内容的BodyPart对象
            bodyPart.setContent(content, "text/html;charset= UTF-8");	//设置 发送邮件内容为HTML类型,并为中文编码

            Multipart multipart= new MimeMultipart();
            multipart.addBodyPart(bodyPart);

            mimeMessage.setContent(multipart);
            mimeMessage.saveChanges();

            //发送消息
            Transport transport=mailSession.getTransport("smtp");
            transport.connect("smtp.qq.com","******************","******************");//发邮件人帐户密码,此外是我的帐户密码，使用时请修改news.properties中的值 。
            transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
            transport.close();
            System.out.println("邮件已成功发送到 " + to);
        }catch (Exception exception){
            exception.printStackTrace();
        }
    }

    public void setJavaMailSender(JavaMailSender javaMailSender){
        this.javaMailSender = javaMailSender;
    }

    public void setSimpleMailMessage(SimpleMailMessage simpleMailMessage) {
        this.simpleMailMessage = simpleMailMessage;
    }
}
