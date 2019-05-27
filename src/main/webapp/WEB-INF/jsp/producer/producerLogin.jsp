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
    <div class="login w3layouts agileits">
        <img src="images/log.jpg" style="height: 430px;margin-left:auto;padding-top: auto">
    </div>
    <div class="register w3layouts agileits">
        <h2 style="padding-left: 130px">用 户 登 录</h2>
        <form action="#" method="post">
            <input type="text" Name="uloginname" id="uloginname" placeholder="用户名" required="">
            <input type="password" Name="upassword" id="upassword" placeholder="密码" required="">
        </form>
        <ul class="tick w3layouts agileits">
            <li>
                <input type="checkbox" id="brand1" value="">
                <label for="brand1"><span></span>记住我</label>
            </li>
        </ul>
        <div class="send-button w3layouts agileits" style="padding-left: 120px">
                <input type="submit"  id="btnlogin" value="登 录">
        </div>
        <a href="/home/index">忘记密码</a>&nbsp;&nbsp;&nbsp;<a href="/home/produrereg">注册登录</a>
        <div class="social-icons w3layouts agileits">
            <p>- 其他方式登录 -</p>
            <ul>
                <li class="qq"><a href="#">
                    <span class="icons w3layouts agileits"></span>
                    <span class="text w3layouts agileits">QQ</span></a></li>
                <li class="weixin w3ls"><a href="#">
                    <span class="icons w3layouts"></span>
                    <span class="text w3layouts agileits">微信</span></a></li>
                <li class="weibo aits"><a href="#">
                    <span class="icons agileits"></span>
                    <span class="text w3layouts agileits">微博</span></a></li>
                <div class="clear"> </div>
            </ul>
        </div>
        <div class="social-icons w3layouts agileits">
            <p>- 游客浏览 -</p>
            <font face="楷体">
                <a style="padding-left:20px;font-size: 24px" href="${ctx}/home/consumer">点击浏览全城家居建材市场</a></font>
        </div>
    </div>
    <div class="clear"></div>
</div>

</body>
</html>
