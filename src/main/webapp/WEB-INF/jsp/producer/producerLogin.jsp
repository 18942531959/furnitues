<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>齐能云端设计</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="css/loginCss/style.css" type="text/css" media="all">
    <script src="js/assets/js/jquery.min.js"></script>
    <script src="js/assets/js/jquery.cookie.js"></script>
    <script src="${ctx}/js/login/login.js"></script>
</head>
<body>
<h1><font face="楷体" style="font-size: 40px;"> 家具通&nbsp;云端智能设计/拆单系统</font></h1>
<div class="container w3layouts agileits" style="padding-top: -100px">
    <div class="login w3layouts agileits" style="margin-left: -50px;margin-top: 3%;">
        <img src="images/log.jpg" style="height: 430px;margin-left:50px;margin-top: -20px;">
    </div>
    <div class="register w3layouts agileits">
        <h2 style="padding-left: 50px">用 户 登 录</h2>
        <form action="#" method="post">
            <input type="text" Name="uloginname" id="uloginname" placeholder="用户名" required="">
            <input type="password" Name="upassword" id="upassword" placeholder="密码" required="">
        </form>
        <a href="/home/index" style="color: whitesmoke;padding-left: 150px">忘记密码</a>&nbsp;&nbsp;&nbsp;<a href="/home/produrereg" style="color: whitesmoke">注册登录</a>
        <br/>
        <div class="send-button w3layouts agileits" style="padding-left: 50px;margin-top: 20px;">
            <input type="submit" style="width: 202px;" id="btnlogin" value="登 录">
        </div>
        <div class="social-icons w3layouts agileits">
            <p>- 游客浏览 -</p>
            <font face="楷体">
                <a style="padding-left:18px;font-size: 24px;color: whitesmoke;" href="${ctx}/home/consumer">点击浏览全城家居建材市场</a></font>
        </div>
    </div>
    <div class="clear"></div>
</div>
</body>
</html>
