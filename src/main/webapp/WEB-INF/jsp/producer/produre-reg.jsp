<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>齐能云端设计</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${ctx}/css/loginCss/style.css" type="text/css" media="all">
    <script src="${ctx}/js/assets/js/jquery.min.js"/>
     <script type="text/javascript">
         console.log("欢迎注册！");
     </script>
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
        <img src="${ctx}/images/log.jpg" style="height: auto;width:auto;margin-left:130px;margin-top: 45px;">
    </div>
    <div class="register w3layouts agileits">
        <div>
            <h1 style="width: 700px;margin-top: 30px; padding-left: 100px;"><font face="楷体" style="font-size: 40px;"> 家具通&nbsp;云端智能设计/拆单系统</font>
            </h1>
        </div>
        <h2 style="margin-left: 30%">注 册</h2>
        <form action="#" method="post">
            <input type="text"  id="phone" name="uloginname" placeholder="用户名" onchange="isCphone(this.value);" required="">
            <input type="password" Name="Email"  name="upassword" id="upassword" placeholder="密码" required="">
            <input type="password" id="urepassword" name="urepassword" placeholder="确定密码" required="">
            <input type="text"  name="code" placeholder="验证码" id="code" required="" style="width: 90px">
            <input type="submit" class="btn" id="btn" name="btn" style="margin-top: 0px;width: 216px;border-left-width: 3px;margin-left: 100px;" value="发送验证码" onclick="sendMessage()" />
        </form>
        <div class="send-button w3layouts agileits" style="margin-left: 20%;padding-top: 100px">
                <input type="submit"  class="btn" id="lo" value="免费注册">
        </div>
    </div>
</body>
<!-- 发送短信验证码并验证  -->
<script type="text/javascript">
    var sms="";
    $("#btn").click(function(){
        var phone=$("#phone").val();
        if(null==phone){
            alert("请输入手机号");
            return false;
        }else if(""!=phone) {
            $.ajax({
                url:"/regitstUser",
                type:"post",
                data:{"uloginname":phone},
                cache:false,
                dataType : "json",
                async:true,
                success:function(result){
                    console.log(result)
                    if(result.status==1){
                        sms=result.data;
                    }
                }
            });
        }
    });
    $("#lo").click(function(){
        var code=$("#code").val();
        var phone=$("#phone").val();
        var upassword=$("#upassword").val();
        var urepassword=$("#urepassword").val();
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
            if(sms==code){
                window.location.href="/home/index";
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