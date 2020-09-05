package com.createros.controller;

import com.createros.domain.Advice;
import com.createros.exception.DefineException;
import com.createros.services.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLDecoder;
import java.text.DateFormat;
import java.util.Date;

@org.springframework.stereotype.Controller
public class Controller {
    @RequestMapping(path = "/downloadImage",produces = "image/png")
    public ModelAndView downloadImage(HttpServletRequest request, HttpServletResponse response) throws DefineException{
//        System.out.println("downloadImage...");
        //获得下载图片名称
        String imageName = "image.png";
        //获得图片下载路径
        ServletContext servletContext = request.getSession().getServletContext();
        String filePath = servletContext.getRealPath("/img/");
        String imagePath = filePath + "/" + imageName;
//        System.out.println("imagePath:" + imagePath);

        if (imagePath != null) {
            File file = new File(imagePath);
            if (file.exists()) {
                response.setContentType("application/force-download");// 设置强制下载不打开
                response.addHeader("Content-Disposition",
                        "attachment;fileName=" + imageName);// 设置文件名
                response.setContentType("image/png");
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                Boolean flag = false;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                    }
                    flag = true;
                } catch (Exception e) {
                    e.printStackTrace();
                    throw new DefineException(e.getLocalizedMessage());
                } finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }

                    if (flag){
                        //下载成功
                        System.out.println("Success...");
                        ModelAndView mv = new ModelAndView();
                        mv.addObject("msg","下载成功 (Success)");
                        mv.setViewName("index.jsp");
                        return mv;
                    }else {
                        //下载失败
                        System.out.println("Failed...");
                        ModelAndView mv = new ModelAndView();
                        mv.addObject("msg", "下载失败 (Failed)");
                        mv.setViewName("index.jsp");
                        return mv;
                    }
                }
            }
        }

        return null;
    }

    @Autowired
    private EmailService emailService;
    @RequestMapping(path = "/SendEmailAdvince",method = {RequestMethod.POST})
    public String SendEmailAdvince(@RequestBody String body) throws DefineException, UnsupportedEncodingException {
        if (body.length() != 0){
            Advice advice = new Advice();
            System.out.println(body);
            String[] split = body.split("&");
            for (String str :
                    split) {
                String s = URLDecoder.decode(str, "utf-8").split("=").length > 1 ? URLDecoder.decode(str, "utf-8").split("=")[1] : "无";
                String otherS = str.split("=").length > 1 ? str.split("=")[1] : "无";
                if (str.contains("message")){
                    if (s.equals("无")) {
                        return "emailSendError.jsp";
                    }
                    advice.setMessage(s);
                }
                if (str.contains("route")){
                    advice.setRoute(otherS);
                }
                if (str.contains("phoneNumber")){
                    advice.setPhoneNumber(otherS);
                }
                if (str.contains("emailAddress")){
                    advice.setEmailAddress(otherS.replace("%40","@"));
                }
                if (str.contains("location")){
                    advice.setLocation(s);
                }
            }
            Date date = new Date();
            DateFormat dateFormat = DateFormat.getDateTimeInstance();
            advice.setSendTime(dateFormat.format(date));
            System.out.println(advice.toString());

            //生成发送文本
            String subject = "匿名反馈信";
            String content = "<table id=\"message-body-wrapper\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td id=\"message-body-left-margin\" width=\"0\"></td><td id=\"message-body\"><table id=\"paragraphs\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td class=\"paragraph\" style=\"padding:0 5% 18px;font:300 14px/18px 'Lucida Grande', Lucida Sans, Lucida Sans Unicode, sans-serif, Arial, Helvetica, Verdana, sans-serif;color:#333;\">西咸公交，您好：</td></tr><tr><td class=\"paragraph\" style=\"padding:0 5% 18px;font:300 14px/18px 'Lucida Grande', Lucida Sans, Lucida Sans Unicode, sans-serif, Arial, Helvetica, Verdana, sans-serif;color:#333;\"><b>" + advice.getMessage() + "</b>" + "<br /><br /><br />联系方式: " + advice.getPhoneNumber() + "<br />邮箱地址: " + advice.getEmailAddress() + "<br />地理位置: " + advice.getLocation() + "<br /></td></tr><tr><td class=\"paragraph\" style=\"padding:0 5% 18px;font:300 14px/18px 'Lucida Grande', Lucida Sans, Lucida Sans Unicode, sans-serif, Arial, Helvetica, Verdana, sans-serif;color:#333;\">" + "申请时间:" + advice.getSendTime() + "</td></tr><tr><td class=\"paragraph\" style=\"padding:0 5% 18px;font:300 14px/18px 'Lucida Grande', Lucida Sans, Lucida Sans Unicode, sans-serif, Arial, Helvetica, Verdana, sans-serif;color:#333;\">如需更多帮助，请联系西咸公交热线。</td></tr><tr><td class=\"paragraph\" style=\"padding:0 5% 18px;font:300 14px/18px 'Lucida Grande', Lucida Sans, Lucida Sans Unicode, sans-serif, Arial, Helvetica, Verdana, sans-serif;color:#333;\">此致</td></tr><tr><td id=\"signature\" style=\"padding:18px 5% 51px;font:300 14px/18px 'Lucida Grande', Lucida Sans, Lucida Sans Unicode, sans-serif, Arial, Helvetica, Verdana, sans-serif;\">西咸公交 支持</td></tr></tbody></table></td></tr></tbody></table>";

            try{
                emailService.sendMailSimple("******************",subject,content);
            }catch (Exception exception){
                exception.printStackTrace();
                throw new DefineException(exception.getLocalizedMessage());
            }
        }

        return "emailSendSuccess.jsp";
    }
}
