<%--
  Created by IntelliJ IDEA.
  User: bryantreyn
  Date: 2020/9/5
  Time: 11:17 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发送成功</title>


    <meta name="viewport" content="width=device-width,initial-scale=0.6, minimum-scale=0.6, maximum-scale=0.8, user-scalable=yes"/>
    <meta name="keywords" content="QRCode,西线公交,1147,西线公交1147">
    <link href="img/bus.png" rel="icon" type="image/x-icon" />

    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body>

<div class="jumbotron">
    <h1 class="display-4">发送成功</h1>
    <p class="lead">您的匿名邮件发送成功,我们会优先处理您的建议/意见，非常感谢您的支持。</p>
    <hr class="my-4">
    <img src="img/sendSuccess.jpg" width="100%"/><br>
    <hr class="my-4">
    <a class="btn btn-primary btn-lg" href="index.jsp" role="button">返回首页</a>
</div>

</body>
</html>
