<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单查询</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%@include file="/common/head.jsp"%>
    <link rel="icon" href="favicon.ico">
    <link rel="stylesheet" href="${ctx}/page/layui/css/layui.css" media="all" />
    <link href="${ctx}/css/all1.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${ctx}/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="${ctx}/page/layui/layui.js"></script>
    <script type="text/javascript" src="${ctx}/js/order/query-order.js"></script>
</head>
<body>
<div class="layui-fluid layui-form" style="left: 570px;">
    <div class="layui-row layui-col-space5">
        <div class="layui-form-item">
            <label class="layui-form-label">订单号:</label>
            <div class="layui-input-inline">
                <input type="text" name="oid" id="oid" lay-verify="required" placeholder="请输入订单编号" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">订单名:</label>
            <div class="layui-input-inline">
                <input type="text" name="oname" id="oname" lay-verify="required" placeholder="请输入订单名称" autocomplete="off" class="layui-input">
            </div>

            <label class="layui-form-label">经销商:</label>
            <div class="layui-input-inline">
                <input type="text" name="odealer" id="odealer" lay-verify="required" placeholder="请输入客户名称" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-input-inline">
                <button class="layui-btn layui-btn-warm" id="orderquery"> 查询</button>&nbsp;
            </div>
        </div>
        </div>
</div>

<p>
<div data-options="region:'center',border:false" style= "background:#eee;">
        <table class="layui-hide" id="cx" lay-filter="cx"></table>
</div>
</p>
</body>
</html>