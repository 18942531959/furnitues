var rootPath;
$(function () {
    rootPath = $("#absolutePath").val();
    $('#btnlogin').click(function () {
        login();
    });
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
                location.href="/indent/orderIndex";
            }
        }
    });
}