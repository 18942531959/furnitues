<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>生产者登入页面</title>
    <%@include file="/common/head.jsp"%>
    <style type="text/css">
        .loginbg{background: url('/images/loginbg.png');background-size:cover;}
        .login-box{width:400px;height: 480px;position: absolute;left: 50%;top: 50%;margin: -240px 0 0 -250px;background: #ececee;padding: 0 50px;}
        .logo-img{margin-top:30px;text-align: center;}
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

        .ui-dialog-content {
            padding: 15px 20px;
        }
        .ui-dialog-pt15 {
            padding-top: 15px;
        }

        .ui-dialog-l40 {
            height: 40px;
            line-height: 40px;
            text-align: right;
        }

        .ui-dialog-input {
            width: 100%;
            height: 40px;
            margin: 0;
            padding: 0;
            border:1px solid #d5d5d5;
            font-size: 16px;
            color: #c1c1c1;
            text-indent: 25px;
            outline: none;
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
        .ui-dialog-content{
            position:absolute;
            left: 54%;
            z-index: 10;
            font-size:25px;
            margin-top: -300px;
            margin-left: -200px;
        }
        .login{
            text-align:center;
            position:absolute;
            left: 55%;
            top: 60%;
            z-index: 10;
            font-size:22px;
            margin-top: 25px;
            margin-left: -200px;
        }
    </style>
</head>
<body style="background-color: #00aeff">
<div class="ui-dialog" id="dialog" style="background-image: url('${ctx}/images/log.jpg')">
    <%--  <div class="layui-row">
          <div class="layui-col-md5">
                  <div class="layui-col-md9" style="left: 250px">
                      <div class="grid-demo grid-demo-bg2">--%>
    <%--<div class="ui-dialog-content" style="left: -20px">
        <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-top: 400px;margin-left: 110px">
            <font face="楷体" style="font-size: 24px;padding-top: 200px"> 家具通&nbsp;云端智能设计/拆单系统</font>&nbsp;&nbsp;
           <input class="ui-dialog-input ui-dialog-input-username" style="margin-right: 120px" type="input"  placeholder="手机/邮箱/用户名" />
        </div>
        <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-left: 110px">
            <input class="ui-dialog-input ui-dialog-input-password" type="password" placeholder="密码" />
        </div>
        <div>
            <a class="ui-dialog-submit" style="margin-top: 40px;size: 90px;width: 250px;margin-left: 180px" href="${ctx}/home/index">登录</a>
        </div>
        <br>
        <div class="ui-dialog-l45" style="margin-left: 270px;font-size: 15px">
            <a href="${ctx}/home/loginagain">登录</a>
            <a href="${ctx}/home/forgetPwd" style="color: #0e0e0e" >验证码登录</a>&nbsp; |&nbsp;
            <a href="${ctx}/home/produrereg" style="color: #0e0e0e">立即注册</a>
        </div>

    </div>--%>
    <div class="inp-box" >
        <font face="楷体" style="font-size: 24px;padding-left: 170px"> 家具通&nbsp;云端智能设计/拆单系统</font>
        <p style="margin-left: 170px">用户名：</p>
        <input type="text" placeholder="请输入您的用户名"style="margin-left: 170px;" id="username"/>
        <p style="margin-left: 170px">密码：</p>
        <input  type="password" id="password" style="margin-left: 170px;" placeholder="请输入您的密码"/>
        <div id="errorMsg"  style="width: 60%;margin: 0 auto ;display:none;">
            <span class="red" id="msg"></span>
        </div>
        <a id="sub" style="margin-left: 240px;width: 200px">登录</a>
        <font face="楷体" href="${ctx}/home/consumer" color="gray"  ><a style="padding-right: 20px" href="${ctx}/home/consumer">点击浏览全城家居建材市场</a></font>
    </div>
    <%-- </div>
 </div>
</div>
</div>--%>
</div>
</body>

</html>
