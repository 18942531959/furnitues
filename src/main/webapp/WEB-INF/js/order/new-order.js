$(function () {
    layui.use('form', function () {
        var form = layui.form();
        layer = layui.layer;
        layui.use('laydate', function () {
            var laydate = layui.laydate;

            /*laydate.render({
                elem: '#odelivery_time'
                , type: 'datetime'

            });*/
        });

        //提交按钮监听
        $("#orders").click(function () {
                submit();
        })

        function submit() {
            //监听提交
            form.on('submit(add)', function (data) {
                $.ajax({
                    url: "addOdres",
                    data: data.field,
                    dataType: "json",
                    type: "post",
                    async: false,
                    success: function (data) {
                        console.log(data);
                        layer.alert(data.message, {
                            icon: 6,
                            title: "提示",
                            yes: function(index, layero){
                                //do something
                                location.reload(false);
                                layer.close(index); //如果设定了yes回调，需进行手工关闭
                            },
                            cancel: function(index, layero){
                                location.reload(false);
                            }
                        });
                    }
                });
                return false;
            });
        }

        //重置
        function closes() {
            var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
            parent.layer.close(index);
        }
    });
});

//时间判断
function timeOnlod() {
    var date1 = new Date();
    var date2 = new Date(date1);
    date2.setDate(date1.getDate() + 15);
    var time=date2.getFullYear() + "-" + (date2.getMonth() + 1) + "-" + date2.getDate();
    $("#odeliverytime").attr("value",time);
}

//正则判断订单电话号码
var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
/**
 * onchange：input框失去焦点的时候触发该事件
 * @param str
 * @returns {boolean}
 */
function isPoneAvailable(str) {
    if (!myreg.test(str)) {
        layer.msg('订单手机号不合法');
        document.getElementById("ophone").value="";
        return false;
    } else {
        return true;
    }
}

//正则判断客户客户电话号码
var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
/**
 * onchange：input框失去焦点的时候触发该事件
 * @param str
 * @returns {boolean}
 */
function isCphone(str) {
    if (!myreg.test(str)) {
        layer.msg('客户手机号不合法');
        document.getElementById("cphone").value="";
        return false;
    } else {
        return true;
    }
}


