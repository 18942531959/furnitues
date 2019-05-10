$(function () {
    layui.use(['form','laydate','table'], function() {
        var form = layui.form;
        initTable();
        // 给查询按钮绑定事件
        $("#orderquery").click(function () {
            orderquery();
        });
    });
});

// 初始化表格
function initTable() {
    layui.use('table',function() {
        var table = layui.table;
        table.render({
            id : "cx",
            elem : '#cx',
            height : "full-120",
            url : '',
            title : "订单查询",
            page : true,
            limit:3,
            limits:[3,6,9],
            method : "post",
            text : {
                none : '对不起，暂无此类数据'
            },

            request : {
                pageName : 'page',
                limitName : 'rows'
            },
            cols : [ [ // 表头
                {
                    title : "序号",
                    type : 'numbers',
                    align : "center"
                },
                {
                    title : '订单编号',
                    field : 'oid',
                    width : '10%',
                    sort : true,
                    align : "center"
                },
                {
                    title : '订单名称',
                    field : 'oname',
                    width : '10%',
                    align : "center"
                },
                {
                    title : '经销商',
                    field : 'odealer',
                    width : '10%',
                    align : "center"
                },
                {
                    title : '订单电话',
                    field : 'ophone',
                    width : '10%',
                    align : "center"
                },
                {
                    title : '订单日期',
                    field : 'ordertime',
                    width : '10%',
                    align : "center"
                },
                {
                    title : '交货日期',
                    field : 'odeliverytime',
                    width : '10%',
                    align : "center",
                },
                {
                    title : '订单地址',
                    field : 'oaddress',
                    width : '20%',
                    align : "center",
                },
                {
                    title : '操作',
                    width : '16%',
                    field : "",
                    align : "center",
                    templet : function(data) {
                        var row = JSON.stringify(data).replace(/\"/g, "'");
                        var btn='<a href="javascript:updateOrders('+row+');" class="layui-btn layui-btn-sm">修改订单</a>';
                        btn+='&nbsp;<a href="javascript:deleteOrders('+row+');" class="layui-btn layui-btn-danger layui-btn-sm">删除订单</a>';
                        return btn;
                    }
                }
            ] ],
            done : function(res, curr, count) {
                if(res.success==false)
                    layer.msg(res.message);
            }
        });
    });
}


// 查询
function orderquery() {
    layui.use('table', function() {
        var table = layui.table;
        var paraments = {
            "oid":$("#oid").val(),
            "oname":$("#oname").val(),
            "odealer":$("#odealer").val()
        };
        table.reload('cx', {
            url : 'queryOrders',
            where : paraments,
            page:{
                curr:1,
            }
        });
    });
}

//删除
function deleteOrders(row){
        layer.confirm('确认删除' + row.oname + "这个订单？", function (index, layero) {
            $.ajax({
                url: "deleteOrders",
                data: {
                    oid: row.oid
                },
                type: "post",
                dataType: "json",
                success: function (data) {
                    layer.msg(data.message);
                    if (data.success)
                        layer.msg(data.message);
                    orderquery();
                }
            });
        });
}


function updateOrders(row){
    layui.use([ 'layer' ], function() {
        var layer = layui.layer;
        layer.open({
            // id : "orderLine",
            title : "",
            type : 2,
            anim : 1,
            offset : 'auto',
            area : [ '1470px', '655px' ],
            content : 'home/updateorder',
            //btn : [ '返回', '关闭' ],
            success : function(layero, index) {
                //获取新窗口对象
                var iframeWindow = layero.find('iframe')[0].contentWindow;
                var body = layer.getChildFrame('body', index);
                // var iframeWin = window[layero.find('iframe')[0]['name']];
                //  iframeWin.initForm(row);
                body.find('#coid').val(row.coid)
                body.find('#oid').val(row.oid)
                body.find('#oname').val(row.oname)
                body.find('#odealer').val(row.odealer)
                body.find('#ophone').val(row.ophone)
                body.find('#opartorder').val(row.opartorder)
                body.find('#ordertime').val(row.ordertime)
                body.find('#odeliverytime').val(row.odeliverytime)
                body.find('#oaddress').val(row.oaddress)
                body.find('#oremark').val(row.oremark)
                body.find('#cname').val(row.cname)
                body.find('#cphone').val(row.cphone)
                body.find('#caddress').val(row.caddress)
                //重新渲染
                //iframeWindow.layui.form.render();
            }
        });
    });
    /*location.href="home/updateorder";*/
}



