<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<%@include file="/common/ctx.jsp"%>
<%@include file="/common/base.jsp"%>
<%
    response.setHeader("Pragma","No-cache");
    response.setHeader("Cache-Control","no-cache");
    response.setDateHeader("Expires", 0);
    response.flushBuffer();
    Cookie killMyCookie = new Cookie("mycookie", null);
    killMyCookie.setMaxAge(0);
    killMyCookie.setPath("/");
    response.addCookie(killMyCookie);
    session.invalidate();
%>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
<!-- 项目开发阶段不需要缓存处理，但在实际项目上线使用后是需要缓存的，所以到时候注释掉下面代码即可 -->
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Cache-Control" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<%--引入layui--%>
<link rel="stylesheet" href="${ctx}/css/layui/layui-v2.4.5/layui/css/layui.css">
<script  src="${ctx}/css/layui/layui-v2.4.5/layui/layui.js"></script>
<script  src="${ctx}/css/layui/layui-v2.4.5/layui/css/layui.css"></script>
<!-- End core plugin -->
<script src="js/assets/js/jquery.min.js"></script>
<script src="js/assets/js/jquery.cookie.js"></script>
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/property.css">
<script>
    function changeDateFormat(cellval) {
        var dateVal = cellval + "";
        if (cellval != null) {
            var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
            var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
            var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
            var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
            var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
            var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
            return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
        }
    }
</script>