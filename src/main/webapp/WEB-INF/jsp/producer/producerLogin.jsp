<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>生产者登入页面</title>
    <%@include file="/common/head.jsp"%>
    <script type="text/javascript" src="${ctx}/js/login/login.js"></script>
    <link rel="stylesheet" href="${ctx}/css/loginCss/login.css">
</head>

<body>
<div style="height: 100px;font-weight:bold;background: white">
    <img src="${ctx}/images/logo.jpg" style="height: 90px;margin-left: 50px;margin-bottom: 20px;">
    <span style="color: blue;line-height: 88px;font-size: 25px">欢迎登入</span>
</div>
<form action="" method="post">
    <div style="background-color: #3079f2;height: 715px;width: 2000px;margin-left: -10px;">
        <div class="ui-dialog" id="dialog">
            <div class="layui-row">
                <div class="layui-col-md5">
                    <div class="layui-row grid-demo">
                        <div class="layui-col-md3">
                            <div class="grid-demo grid-demo-bg1"> <img style="height: 100%" src="${ctx}/images/log.jpg"></div>
                        </div>
                        <div class="layui-col-md9" style="left: 70%">
                            <div class="grid-demo grid-demo-bg2">
                                <div class="ui-dialog-title" id="dialogTitle" style="width: 400px;font-size: 20px;margin-top: 40px">
                                    <font color="blue" face="宋体" style="font-size: 24px;font-weight:bold"> 家具通&nbsp;云端智能设计/拆单系统</font>
                                </div>
                                <div class="ui-dialog-content">
                                    <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-top: 400px;margin-left: 110px">
                                        <input class="ui-dialog-input ui-dialog-input-username" style="margin-right: 120px" type="input"  placeholder="手机/用户名" name="uloginname" id="uloginname" autocomplete="off"/>
                                    </div>
                                    <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-left: 110px">
                                        <input class="ui-dialog-input ui-dialog-input-password" type="password" placeholder="密码" name="upassword" id="upassword" />
                                    </div>
                                    <div class="layui-layer-move">
                                        <div class="code">
                                            <input type="text" placeholder="请输入验证码" class="input-val" style="margin-top: 15px;margin-left: 94px;width: 215.968748px;">
                                            <canvas id="canvas" width="100" height="43" style="margin-top: 15px;margin-right: -15px;"></canvas>
                                        </div>
                                    </div>
                                    <div>
                                        <a class="ui-dialog-submit btn" style="margin-top: 40px;size: 90px;width: 250px;margin-left: 180px" id="btnlogin">登录</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
<div style="width: 100%;height: 50px;line-height: 50px;text-align: center;font-size: 14px;color: #999;background: white">©2012～2019 All rights reserved齐能信息科技有限公司 版权所有粤ICP备14070053号-2</div>
<script>

    $(function(){
        var show_num = [];
        draw(show_num);

        $("#canvas").on('click',function(){
            draw(show_num);
        })
        $(".btn").on('click',function(){
            var val = $(".input-val").val().toLowerCase();
            var num = show_num.join("");
            if(val==''){
                alert('请输入验证码！');
            }else if(val == num){
                alert('提交成功！');
                $(".input-val").val('');
                draw(show_num);

            }else{
                alert('验证码错误！请重新输入！');
                $(".input-val").val('');
                draw(show_num);
            }
        })
    })

    function draw(show_num) {
        var canvas_width=$('#canvas').width();
        var canvas_height=$('#canvas').height();
        var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
        var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
        canvas.width = canvas_width;
        canvas.height = canvas_height;
        var sCode = "A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
        var aCode = sCode.split(",");
        var aLength = aCode.length;//获取到数组的长度

        for (var i = 0; i <= 3; i++) {
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var txt = aCode[j];//得到随机的一个内容
            show_num[i] = txt.toLowerCase();
            var x = 10 + i * 20;//文字在canvas上的x坐标
            var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
            context.font = "bold 23px 微软雅黑";

            context.translate(x, y);
            context.rotate(deg);

            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);

            context.rotate(-deg);
            context.translate(-x, -y);
        }
        for (var i = 0; i <= 5; i++) { //验证码上显示线条
            context.strokeStyle = randomColor();
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }
        for (var i = 0; i <= 30; i++) { //验证码上显示小点
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }
    }

    function randomColor() {//得到随机的颜色值
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }
</script>
</body>
</html>
