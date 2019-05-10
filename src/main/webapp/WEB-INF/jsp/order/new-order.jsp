<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新建订单</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <%@include file="/common/head.jsp"%>
    <link rel="icon" href="${ctx}/jsp/favicon.ico">
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="${ctx}/css/index.css" media="all" />
    <script type="text/javascript" src="${ctx}/layui/layui.js"></script>
    <link href="${ctx}/css/all1.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/js/editor/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/js/editor/css/froala_editor.min.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="${ctx}/js/order/new-order.js"></script>
</head>
<%--<%
    //每隔一秒，刷新一次页面
    response.setHeader("refresh","1");
//获取当前时间
    Date mydate=new Date();
%>--%>
<body style="background-color: #e6ecf5" onload="timeOnlod();">
<div class="book_con01" style="padding-top: 0px;">
    <form  id="form_demo" class="layui-form" action="" method="post" >   <p class="book_p">
        <table class="book_table" border="1" cellpadding="10">
            <tr><td colspan="4" style="text-align: center">新建订单</td>
            </tr>
            <tr>
                <td>  <label class="td_label">订单编号</label><i class="i_start" ></i>
                </td>
                <td colspan="3"><input type="text" oninput="if(value.length>16)value=value.slice(0,16)" class="book_input03" name="oid" id="oid" minlength="2"  autocomplete="off"
                /></td>

            </tr>

            <tr><td><label class="td_label">订单名称</label></td>
                <td><input type="text" class="book_input03" oninput="if(value.length>20)value=value.slice(0,20)" name="oname" id="oname" minlength="2"  required lay-verify="required" autocomplete="off"
                /></td>

                <td><label class="td_label">经销商</label></td>
                <td><input type="text" class="book_input03" oninput="if(value.length>20)value=value.slice(0,20)" name="odealer" id="odealer" minlength="2"  required lay-verify="required" autocomplete="off"
                /></td>

            </tr>
            <tr><td><label class="td_label">电话</label></td>
                <td ><input type="text" oninput="if(value.length>11)value=value.slice(0,11)" pattern="[0-9]*"
                            onchange="isPoneAvailable(this.value)" id="ophone" name="ophone" class="book_input03" required lay-verify="required|phone" autocomplete="off"/></td>

                <td><label class="td_label">下单员</label></td>
                <td>
                    <input type="text"  id="opartorder" name="opartorder" class="book_input03" oninput="if(value.length>6)value=value.slice(0,6)" required lay-verify="required" autocomplete="off"/>
                </td>

            </tr>
            <tr> <td><label class="td_label">下单日期</label></td>
                <td >
                    <input type="text"  value="<%=new java.sql.Timestamp(System.currentTimeMillis()).toString().substring(0,10) %>" class="layui-input book_input03" name="ordertime" id="ordertime" readonly="true"  autocomplete="off"/>
                </td>
                <td><label class="td_label">交货日期</label></td>

                <td>
                    <input type="text"  id="odeliverytime" name="odeliverytime" lay-verify="required|date" onclick="layui.laydate({elem: this,min: laydate.now()});"  class="layui-input book_input03">
                </td>

            </tr>
            <tr> <td><label class="td_label">地址</label></td>
                <td colspan="3">
                    <input type="text" id="oaddress" name="oaddress" class="book_input03" oninput="if(value.length>50)value=value.slice(0,50)" required lay-verify="required" autocomplete="off"/>
                </td>
            </tr>
            <tr>
                <td><label class="td_label">备注</label></td>
                <td colspan="3">
                <textarea  class="textArae" name="oremark" id="oremark" oninput="if(value.length>200)value=value.slice(0,200)" required lay-verify="required" autocomplete="off"></textarea>
            </td>
        </table>
        <table class="book_table" border="1" cellpadding="10">
            <tr><td colspan="4" style="text-align: center">客户信息表</td>
            </tr>
            <tr>
                <td>  <label class="td_label">客户姓名</label><i class="i_start" ></i></td>
                <td><input type="text" class="book_input03" oninput="if(value.length>10)value=value.slice(0,10)" name="cname" id="cname" minlength="2"  required lay-verify="required" autocomplete="off"/></td>
                <td><label class="td_label">客户电话</label></td>
                <td><input type="text" class="book_input03" name="cphone" id="cphone" oninput="if(value.length>11)value=value.slice(0,11)" pattern="[0-9]*"
                           onchange="isCphone(this.value)" minlength="2"  required lay-verify="required" autocomplete="off"/></td>
            </tr>
            <tr>
                <td><label class="td_label">客户地址</label></td>
                <td colspan="3"><input type="text" class="book_input03" oninput="if(value.length>50)value=value.slice(0,50)" name="caddress" id="caddress" minlength="2"  required lay-verify="required" autocomplete="off"/></td>
            </tr>
        </table>
        <p class="book_foot"><button style="width: 100px;" type="reset" class="layui-btn layui-btn-danger" onclick="closes()">重置</button>
            <button type="button" class="layui-btn" lay-submit lay-filter="add" id="orders">保存进入设计</button>
        </p></form>
</div>
</body>
</html>
