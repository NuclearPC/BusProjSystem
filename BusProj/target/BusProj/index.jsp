<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: bryantreyn
  Date: 2020/9/1
  Time: 8:24 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>西咸公交1147便民群</title>

    <meta name="viewport" content="width=device-width,initial-scale=0.6, minimum-scale=0.6, maximum-scale=0.6, user-scalable=yes"/>
    <meta name="keywords" content="QRCode,西线公交,1147,西线公交1147">
    <link href="img/bus.png" rel="icon" type="image/x-icon" />


    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/indexStyle.css" />

    <!-- JS, Popper.js, and jQuery -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

</head>
<body id="body">

<%-- 帮助文档 --%>
<div id="helpDiv">
    <img src="img/about.png" id="helpImg"/>
</div>

<%-- 紧急电话 --%>
<div id="emergencyCall">
    <img src="img/phone.png" id="emergencyCallImg"/>
</div>

<%-- 显示板 --%>
<div id="showImage">
    <!-- 标题 -->
    <div id="TitleDiv">
        <h2 id="title">西咸公交1147路线便民群</h2>
        <h5>Xi'xian Bus Route 1147 Convenience Group</h5>
    </div>
    <!-- 二维码图片 -->
    <div id="ImageDiv"><img src="${pageContext.request.contextPath}/img/image.png" class="rounded mx-auto d-block" id="image"></div>
    <!-- 下载图片 -->
    <div id="DownloadDiv">
        <span>
			<button type="button" class="btn btn-light" id="downloadButton">下载图片</button>
		</span>
    </div>

    <!-- 重载网页 -->
    <div id="RefleshDiv"><button type="button" class="btn btn-light" id="refreshButton">刷新二维码</button></div>
    <!-- 打开微信 -->
    <div id="OpenWechatDiv"><button type="button" class="btn btn-light" id="openWeChatButton">微信扫一扫</button></div>
</div>

<br />

<!-- 底部信息显示 -->
<div id="InfoDiv" class="s-bottom-layer-right">
    <span class="lh">
        <font class="infoFont">
        <a href="${pageContext.request.contextPath}/advices.jsp">
            <svg width="1.3em" height="1.3em" viewBox="0 0 16 16" class="bi bi-envelope-open-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                <path d="M8.941.435a2 2 0 0 0-1.882 0l-6 3.2A2 2 0 0 0 0 5.4v.313l6.709 3.933L8 8.928l1.291.717L16 5.715V5.4a2 2 0 0 0-1.059-1.765l-6-3.2zM16 6.873l-5.693 3.337L16 13.372v-6.5zm-.059 7.611L8 10.072.059 14.484A2 2 0 0 0 2 16h12a2 2 0 0 0 1.941-1.516zM0 13.373l5.693-3.163L0 6.873v6.5z"/>
            </svg>
            意见反馈
        </a>&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="${pageContext.request.contextPath}/MoviePlay.jsp">
            <svg width="1.3em" height="1.3em" viewBox="0 0 16 16" class="bi bi-badge-hd" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
              <path fill-rule="evenodd" d="M14 3H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zM2 2a2 2 0 0 0-2 2v8a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V4a2 2 0 0 0-2-2H2z"/>
              <path d="M7.396 11V5.001H6.209v2.44H3.687V5H2.5v6h1.187V8.43h2.522V11h1.187zM8.5 5.001V11h2.188c1.811 0 2.685-1.107 2.685-3.015 0-1.894-.86-2.984-2.684-2.984H8.5zm1.187.967h.843c1.112 0 1.622.686 1.622 2.04 0 1.353-.505 2.02-1.622 2.02h-.843v-4.06z"/>
            </svg>
            使用帮助
        </a>&nbsp;&nbsp;&nbsp;&nbsp;
        ©2020&nbsp;CreaterOS</font>&nbsp;
    </span>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="javascript:void(0)" target="_blank">
        <span class="lh s-bottom-recordcode">
            <font class="infoFont">陕ICP备20003992号</font>
        </span>
    </a>
</div>

<script type="application/javascript">
    $(function () {
        if (!navigator.userAgent.match("iPhone")){
            $("#DownloadDiv").hide();
        }

        $("#downloadButton").click(function () {
            // 交给控制器进行下载管理
            window.location.href = "${pageContext.request.contextPath}/downloadImage";
        });
        $("#refreshButton").click(function () {
            // 刷新整个网页
            location.reload();
        });
        $("#openWeChatButton").click(function () {
            // 跳转微信扫一扫程序
            window.location.href = "weixin://scanQRCode";
        });
        $("#helpImg").click(function () {
            // 进入帮助文档
            window.location.href = "${pageContext.request.contextPath}/helpPage.jsp";
        });
        $("#emergencyCallImg").click(function () {
            window.location.href = "tel:96166";
        });
    });
</script>

</body>
</html>