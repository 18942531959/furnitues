<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>齐能云端设计</title>
    <meta charset="UTF-8">
    <%@include file="/common/head.jsp"%>
    <link rel="stylesheet" href="${ctx}/css/loginCss/style.css" type="text/css" media="all">
    <script src="${ctx}/js/assets/js/jquery.min.js"></script>
    <script type="text/javascript">
        $(function(){
            var verifyCode = new GVerify("v_container");
            document.getElementById("code_input").onblur = function(){
                var res = verifyCode.validate(document.getElementById("code_input").value);
                if(res){
                    alert("验证正确");
                }else{
                    alert("验证码错误");
                }
            }
        })
        // 发送短信验证码倒计时
        var InterValObj; //timer变量，控制时间
        var count = 60; //间隔函数，1秒执行
        var curCount;//当前剩余秒数
        function sendMessage(){
            curCount = count;
            $("#btn").attr("disabled", "true");
            $("#btn").val(curCount + "秒后重新发送");
            InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次请求后台发送验证码 TODO
        }
        //timer处理函数
        function SetRemainTime() {
            if (curCount == 0) {
                window.clearInterval(InterValObj);//停止计时器
                $("#btn").removeAttr("disabled");//启用按钮
                $("#btn").val("重新发送验证码");
            }
            else {
                curCount--;
                $("#btn").val(curCount + "秒后重新发送");
            }
        }
    </script>
    <style type="text/css">
        #btn{ margin-left:50px; margin-top:-40px; width: 129px;height: 40px; font-size: 22px; }
        body{ background-color: #ecfcf9;}
    </style>
</head>
<body>
    <div class="login w3layouts agileits" style="margin-left: -60px;margin-top: -2%;">
        <img src="${ctx}/images/log.jpg" style="height: 670px;margin-left:130px;margin-top: 68px">
    </div>
    <div class="register w3layouts agileits">
        <div>
            <h1 style="width: 700px;margin-top: 30px; padding-left: 100px;"><font face="楷体" style="font-size: 40px;"> 家具通&nbsp;云端智能设计/拆单系统</font>
            </h1>
        </div>
        <h2 style="margin-left: 50%">注 册</h2>
        <form action="#" method="post">
            <input type="text"  style="margin-left: 90px;" id="phone" name="uphone" placeholder="手机号" onchange="isCphone(this.value);" required="">
            <input type="text"  style="margin-left: 90px;" id="uloginname" name="uloginname" placeholder="用户名" required="">
            <input type="password" style="margin-left: 90px;"  name="upassword" id="upassword" placeholder="密码" required="">
            <input type="password" style="margin-left: 90px;" id="urepassword" name="urepassword" placeholder="确定密码" required="">
            <input type="text"   name="code" placeholder="验证码" id="code" required="" style="width: 90px;margin-left: 90px;">
            <input type="submit"  class="btn" id="btn" name="btn" style="width: 216px;border-left-width: 3px;margin-left: 400px;margin-bottom: 20px;" value="发送验证码" onclick="sendMessage()" />
            <div style="padding-bottom: 30px">
                <font COLOR="white" style="margin-left: 95px">注册方：</font>
                <select id="urole" name="urole" style="margin-left: 10px;" >
                    <option value="0">----请选择----</option>
                    <option value="1">浏览方</option>
                    <option value="2">经营方</option>
                    <option value="3">生产方</option>
                </select>
            </div>
        </form>
        <a style="padding-left:100px;font-size: 24px;color: white" href="javascript:history.go(-1)">已有账号，去登陆?</a>
        <div class="send-button w3layouts agileits" style="margin-left: 40%;padding-top: 40px">
                <input type="submit"  class="btn" id="lo" value="免费注册">
        </div>
    </div>
</body>
<!-- 发送短信验证码并验证  -->
<script type="text/javascript">
    var sms="";
    $("#btn").click(function(){
        var phone=$("#phone").val();//电话
        if(null==phone){
            alert("请输入手机号");
            return false;
        }else if(""!=phone) {
            $.ajax({
                url:"/regitstUser",
                type:"post",
                data:{"uphone":phone},
                cache:false,
                dataType : "json",
                async:true,
                success:function(result){
                    if(result.status==1){
                        sms=result.data;
                    }
                }
            });
        }
    });
    $("#lo").click(function(){
        var code=$("#code").val();//电话
        var phone=$("#phone").val();//电话
        var uloginname=$("#uloginname").val();//登录名
        var upassword=$("#upassword").val();//密码
        var urepassword=$("#urepassword").val();//确定密码
        var urole=$('#urole option:selected').val();//注册方
        if(""==phone){
            alert("请输入手机号");
        }else  if(""==code){
            alert("请输入验证码");
            return false;
        }else if(""==upassword && ""==urepassword){
            alert("密码不能为空");
            return false;
        }else if(upassword!=urepassword){
            alert("两次密码不相同");
            return false;
        }else if(""!=code && ""!=phone){
            alert("验证码："+sms);
            alert("验证码2:："+code);
            if(sms==code){
                $.ajax({
                    url:"/UserRe",
                    type:"post",
                    data:{"uphone":phone,
                        "uloginname":uloginname,
                        "upassword":upassword,
                        "urepassword":urepassword,
                        "urole":urole},
                    cache:false,
                    dataType : "json",
                    async:true,
                    success:function(result){
                        if(result.success){
                           alert("跳转到生成者页面");
                        }else{
                            alert("跳转到注册页面");
                        }
                    }
                });
            }else{
                alert("验证码错误");
            };
        }
    });
    //正则判断客户客户电话号码
    var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
    /**
     * onchange：input框失去焦点的时候触发该事件
     * @param str
     * @returns {boolean}
     */
    function isCphone(str) {
        if (!myreg.test(str)) {
            alert('手机号不合法');
            document.getElementById("phone").value="";
            return false;
        } else {
            return true;
        }
    }
</script>
</html>