var rootPath;
$(function () {
    rootPath = $("#absolutePath").val();

    $('#btnlogin').click(function () {
        login();
    });
});
$(document).ready(function () {
    if ($.cookie("rmbUser") == "true") {
        $("#ck_rmbUser").attr("checked", true);
        $("#uloginname").val($.cookie("uloginname"));
        $("#upassword").val($.cookie("upassword"));
    }
});
function login() {
    //得到name输入框对象
    var uloginname= $('#uloginname').val();
    var upassword= $('#upassword').val();
    //判断输入框是否有内容
    if(uloginname.length==0){
        confirm("用户名或账号不能为空");
        return false;
    }
    if(upassword.length==0){
        confirm("密码不能为空");
        return false;
    }
    if ($("#ck_rmbUser").attr("checked")) {
        var str_username = $("#uloginname").val();
        var str_password = $("#upassword").val();
        $.cookie("rmbUser", "true", { expires: 7 }); //存储一个带7天期限的cookie
        $.cookie("uloginname", str_username, { expires: 7 });
        $.cookie("upassword", str_password, { expires: 7 });
    }
    else {
        $.cookie("rmbUser", "false", { expire: -1 });
        $.cookie("uloginname", "", { expires: -1 });
        $.cookie("upassword", "", { expires: -1 });
    }
    var urole= $('#urole').val();
    var text= $("#urole").find("option:selected").text();
    var opt={
        uloginname:uloginname,
        upassword:upassword,
        urole:urole
    }
    $.ajax({
        url :"loginUser",
        data:opt,
        type : "post",
        cache:false,
        dataType : "json",
        async:true,
        success:function(data) {
            console.log(data);
            if(data.success){
                if(data.query.urole==0){
                    alert("游客")
                }else if(data.query.urole==1){
                    alert("销售")
                }else if(data.query.urole==2){
                    alert("生产")
                }
            }else{
                alert("进入登录界面");
                location.href=rootPath+"home/producerLogin";
            }
        }
    });
}