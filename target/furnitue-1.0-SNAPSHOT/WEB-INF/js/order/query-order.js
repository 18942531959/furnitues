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
                    title : '电话',
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
                    title : '地址',
                    field : 'oaddress',
                    width : '10%',
                    align : "center",
                },
                {
                    title : '备注',
                    field : 'oremark',
                    width : '10%',
                    align : "center",
                },
                {
                    title : '操作',
                    width : '16%',
                    field : "",
                    align : "center",
                    templet : function(data) {
                        var row = JSON.stringify(data).replace(/\"/g, "'");
                        var btn='<a href="javascript:updateOrder('+row+');" class="layui-btn layui-btn-sm">修改订单</a>';
                        btn+='&nbsp;<a href="javascript:deleteOrder('+row+');" class="layui-btn layui-btn-danger layui-btn-sm">删除订单</a>';
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