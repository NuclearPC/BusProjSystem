<%--
  Created by IntelliJ IDEA.
  User: bryantreyn
  Date: 2020/9/2
  Time: 11:31 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <title>report</title>

    <style type="text/css">
        .Content-Main{
            max-width: 500px;
            margin: auto;
            margin-top: 50px;
            padding: 20px 30px 20px 30px;
            font: 12px "Helvetica Neue", Helvetica, Arial, sans-serif;
            text-shadow: 1px 1px 1px #FFF;
            border: 1px solid #DDD;
            border-radius: 5px;
            color: #888;
            background: #FFF;
        }
        .Content-Main h1{
            display: block;
            padding: 0px 0px 10px 40px;
            margin: -10px -30px 30px -30px;
            font: 25px "Helvetica Neue", Helvetica, Arial, sans-serif;
            border-bottom: 1px solid #DADADA;
            color: #888;
        }
        .Content-Main h1>span{
            display: block;
            font-size: 11px;
        }
        .Content-Main label{
            display: block;
            margin: 0px 0px 5px;
        }
        .Content-Main label>span{
            float: left;
            width: 20%;
            padding-right: 10px;
            margin-top: 10px;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-weight: bold;
            text-align: right;
            color: #333;
        }
        .Content-Main input[type="text"],.Content-Main textarea{
            width: 70%;
            height: 20px;
            padding: 5px 0px 5px 5px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            line-height: 15px;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .select1{
            width: 71%;
            height: 35px;
            margin-bottom: 16px;
            margin-right: 6px;
            margin-top: 2px;
            line-height: 15px;
            padding: 5px 0px 5px 5px;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .select2{
            width: 13%;
            border-radius: 4px;
            border: 1px solid #CCC;
            color: #888;
            -webkit-border-radius: 4px;
            -moz-border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
            -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        }
        .Content-Main textarea{
            width: 70%;
            height: 100px;
            padding: 5px 0px 0px 5px;
        }
        .button{
            padding: 10px 25px 10px 25px;
            margin-left: 111px;
            border-radius: 4px;
            border:1px solid #CCC;
            background: #FFF;
            color: #333;
        }
        .button:hover{
            color: #333;
            background-color: #EBEBEB;
            border-color: #ADADAD;
        }
    </style>
</head>
<body>
<div class="Content-Main">
    <div class="Content-Main1">
        <h1>用户反馈</h1>
    </div>
    <form action="${pageContext.request.contextPath}/SendEmailAdvince" method="post">
        <label>
            <span>意见/建议:</span>
            <textarea id="mesaage" name="message" placeholder="请输入意见/建议"></textarea>
        </label>
        <label>
            <span>路线:</span>
            <select name="route" class="select1">
                <option value="Bus1147" name="Bus1147">1147</option>
            </select>
        </label>
        <label>
            <span>联系方式:</span>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="请输入联系方式(电话)" aria-label="Recipient's username" aria-describedby="button-addon2" name="phoneNumber" style="display: inline-block; width: 170px;height: 30px">
            </div>
        </label>
        <label>
            <span>邮箱:</span>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="请输入邮箱地址" aria-label="Recipient's username" aria-describedby="button-addon2" name="emailAddress" style="display: inline-block; width: 170px;height: 30px">
            </div>
        </label>
        <label>
            <span>地理位置:</span>
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="请输入地理位置" aria-label="Example text with button addon" aria-describedby="button-addon1" name="location">
            </div>
        </label>
        <br />
        <label>
            <input type="submit" class="button" id="sendButton" value="发送" />
        </label>
    </form>
</div>

<script src="js/jquery.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#mesaage").unbind('blur').bind('blur',function () {
            if ($("#mesaage").val().length == 0){
                alert("建议意见 不能为空");
            }
        });
    });
</script>
</body>
</html>

