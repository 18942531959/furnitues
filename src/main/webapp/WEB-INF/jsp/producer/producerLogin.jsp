<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>生产者登入页面</title>
    <%@include file="/common/head.jsp"%>
    <script src="${ctx}/js/login/login.js"/>
    <script>
        console.log("aa");
    </script>
    <style type="text/css">
        .inp-box{margin-top:45px;width: 100%;overflow: hidden;}
        .inp-box p{font-size: 14px;margin:10px 0 5px 0;}
        .inp-box input{width:358px;border-radius: 3px;height: 45px;line-height: 45px;border: 1px solid #ccc;color: #aaa;padding: 0 20px;outline:none;}
        .inp-box a{width: 100%;text-align: center;height: 50px;line-height: 50px;background: #00a0e9;color: #fff;display: block;margin-top: 40px;}
        .inp-box span.red{color:red;font-size: 14px;line-height:40px;position: absolute;left: 0;left: 50px;}
        /*css修改placeholder字体颜色*/
        ::-webkit-input-placeholder { /* WebKit browsers */
            color:#aaa;
        }
        :-moz-placeholder { /* Mozilla Firefox 4 to 18 */
            color:#aaa;
        }
        ::-moz-placeholder { /* Mozilla Firefox 19+ */
            color:#aaa;
        }
        :-ms-input-placeholder { /* Internet Explorer 10+ */
            color:#aaa;
        }

        .ui-dialog {
            position: fixed;
            left: 50%;
            top: 50%;
            z-index: 10;
            margin-top: -260px;
            width: 650px;
            height: 450px;
            margin-left: -300px;
            background-color: #f5f5f5;
        }


        .ui-dialog-submit {

            width: 100%;

            height: 50px;

            background: #3b7ae3;

            border: none;

            font-size: 16px;

            color: #ffffff;

            outline: none;

            text-decoration: none;

            display: block;

            text-align: center;

            line-height: 50px;

        }

        .ui-dialog-submit:hover {

            background: #3f81b0;

        }

        div#div1 > img {
            height:100%;
            width:100%;
            border:0;
        }

    </style>
</head>
<body style="background-color: #00aeff">
<div class="ui-dialog" id="dialog" style="background-image: url('${ctx}/images/log.jpg')">
    <div class="inp-box" >
        <font face="楷体" style="font-size: 24px;padding-left: 170px"> 家具通&nbsp;云端智能设计/拆单系统</font>
        <p style="margin-left: 170px">用户名：</p>
        <input type="text" placeholder="请输入您的用户名"style="margin-left: 170px;" name="uloginname" id="uloginname"/>
        <p style="margin-left: 170px">密码：</p>
        <input  type="password" name="upassword" id="upassword" style="margin-left: 170px;" placeholder="请输入您的密码"/>
        <div id="errorMsg"  style="width: 60%;margin: 0 auto ;display:none;">
            <span class="red" id="msg"></span>
        </div>
        <a class="ui-dialog-button" id="btnlogin" style="margin-top: 40px;size: 90px;width: 250px;margin-left: 180px">登录</a>
    </div>
    <br>
    <div class="ui-dialog-l45" style="margin-left: 280px;font-size: 15px">
        <a href="${ctx}/home/index" style="color: #0e0e0e">忘记密码</a>&nbsp; |&nbsp;
        <a href="${ctx}/home/produrereg" style="color: #0e0e0e">立即注册</a>
        <font face="楷体" href="${ctx}/home/consumer" color="gray"  ><a style="padding-right: 20px" href="${ctx}/home/consumer">点击浏览全城家居建材市场</a></font>
    </div>

</div>
</body>

</html>
