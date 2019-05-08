<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <meta charset="UTF-8">

    <title>注册页面</title>
    <%@include file="/common/head.jsp"%>
    <style type="text/css">
        .ui-dialog {
            position: fixed;
            left: 50%;
            top: 50%;
            z-index: 10;
            margin-top: -260px;
            width: 750px;
            height: 450px;
            margin-left: -390px;
            background-color: #f5f5f5;
        }
        .ui-dialog-title {
            position:absolute;
            height: 48px;
            margin-left: 30px;
            line-height: 48px;
            padding-left: 40px;
            color: #535353;
            font-size: 16px;
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

            margin-top: 20px;

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

        div#div1{
            position:absolute;
            top:0;
            left:0;
            bottom:0;
            right:0;
            z-index:-1;
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
            position:absolute;
            left: 60%;
            top: 103%;
            z-index: 10;
            font-size:22px;
            margin-top: 25px;
            margin-left: -200px;
        }
    </style>

</head>
<body style="background-color: #00aeff">
<div class="ui-dialog" id="dialog">
    <div class="layui-row">
        <div class="layui-col-md5">
            <div class="layui-row grid-demo">
                <div class="layui-col-md3">
                    <div class="grid-demo grid-demo-bg1"> <img style="height: 100%" src="${ctx}/images/log.jpg"></div>
                </div>
                <div class="layui-col-md9" style="left: 250px">
                    <div class="grid-demo grid-demo-bg2">
                        <div class="ui-dialog-title" id="dialogTitle" style="width: 400px;font-size: 20px;margin-top: 40px">
                            <font face="楷体" style="font-size: 24px;"> 家具通</font>&nbsp;&nbsp;云端智能设计/拆单系统
                        </div>
                        <div class="ui-dialog-content">
                            <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-top: 400px;margin-left: 110px">
                                <input class="ui-dialog-input ui-dialog-input-username" style="margin-right: 120px" type="input"  placeholder="手机/邮箱/用户名" />
                            </div>
                            <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-left: 110px">
                                <input class="ui-dialog-input ui-dialog-input-password" type="password" placeholder="密码" />
                            </div>
                            <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-left: 110px">
                                <input class="ui-dialog-input ui-dialog-input-password" type="password" placeholder="确认密码" />
                            </div>
                            <div class="ui-dialog-l40 ui-dialog-pt15" style="margin-top: 400px;margin-left: 110px">
                                <input class="ui-dialog-input ui-dialog-input-username" style="margin-right: 120px;margin-top: 300px" type="input"  placeholder="验证码" />
                            </div>
                            <div>
                                <a class="ui-dialog-submit" style="margin-top: 40px;size: 90px;width: 250px;margin-left: 180px" href="${ctx}/home/index">注册</a>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            // 获取元素对象
            function g(id) {
                return document.getElementById(id);
            }
            // 自动居中函数 -- 登录浮层
            // el {Element}
            function autoCenter(el) {
                // 获得可视区域的宽和高
                var bodyW = document.documentElement.clientWidth;
                var bodyH = document.documentElement.clientHeight;
                // 获得元素 el 的宽和高
                var elW = el.offsetWidth;
                var elH = el.offsetHeight;
                // 设置元素的 style 样式
                el.style.left = (bodyW - elW) / 2 + 'px';
                el.style.top = (bodyH - elH) / 2 + 'px';
            }
            // 扩展元素到整个可视区域 -- 遮罩层
            // el {Element}
            function fillToBody(el) {
                // 将元素的宽和高设置的和可视区域一样
                el.style.width = document.documentElement.clientWidth + 'px';
                el.style.height = document.documentElement.clientHeight + 'px';
            }
            // 定义全局变量
            var mouseOffsetX = 0;
            var mouseOffsetY = 0;
            var isDragging = false;
            // 鼠标事件1 -- 在标题栏上按下
            // 计算鼠标相对拖拽元素的的左上角的坐标， 并且标记元素为可拖动
            g('dialogTitle').addEventListener('mousedown', function(e) {
                var e = e || window.event;
                // 用鼠标按下时的坐标减去 dialog 的左上角坐标
                mouseOffsetX = e.pageX - g('dialog').offsetLeft;
                mouseOffsetY = e.pageY - g('dialog').offsetTop;
                isDragging = true;
            });
            // 鼠标事件2 -- 鼠标移动
            document.onmousemove = function(e) {
                var e = e || window.event;
                // 鼠标当前位置
                var mouseX = e.pageX;
                var mouseY = e.pageY;
                // 鼠标从单击时至当前时刻移动的距离
                var moveX = 0;
                var moveY = 0;
                if (isDragging === true) {
                    moveX = mouseX - mouseOffsetX;
                    moveY = mouseY - mouseOffsetY;
                    // 范围限定
                    // moveX > 0 且 moveX < (页面最大宽度 - 浮层宽度)
                    // moveY > 0 且 moveY < (页面最大宽度 - 浮层高度)
                    var pageWidth = document.documentElement.clientWidth;
                    var pageHeight = document.documentElement.clientHeight;
                    // 登录浮层的宽、高

                    var dialogWidth = g('dialog').offsetWidth;

                    var dialogHeight = g('dialog').offsetHeight;

                    var maxX = pageWidth - dialogWidth;

                    var maxY = pageHeight - dialogHeight;

                    moveX = Math.min(maxX, Math.max(0, moveX));

                    moveY = Math.min(maxY, Math.max(0, moveY));

                    g('dialog').style.left = moveX + 'px';

                    g('dialog').style.top = moveY + 'px';

                }

            };
            // 鼠标事件3 -- 鼠标松开
            document.onmouseup = function() {

                isDragging = false;

            };
            // 展现登录浮层
            function showDialog() {

                g('dialog').style.display = 'block';

                g('mask').style.display = 'block';

                autoCenter(g('dialog'));

                fillToBody(g('mask'));

            }

            // 隐藏登录浮层

            function hideDialog() {

                g('dialog').style.display = 'none';

                g('mask').style.display = 'none';

            }
            window.onresize = function() {

                autoCenter(g('dialog'));

                fillToBody(g('mask'));
            };
            showDialog();
            autoCenter(g('dialog'));
        </script>

</body>

</html>
