<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<title>家具通智能设计/拆单系统</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta http-equiv="Access-Control-Allow-Origin" content="*">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<%@include file="/common/head.jsp"%>
	<link rel="icon" href="favicon.ico">
	<link rel="stylesheet" href="${ctx}/css/css/style.css">
	<script type="text/javascript" src="${ctx}/js/jquery-1.10.2.min.js"></script>
	<link rel="stylesheet" href="${ctx}/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="${ctx}/css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="${ctx}/css/main.css" media="all" />
</head>
<script type="text/javascript">
    $(document).ready(function(){

        /* ----- 侧边悬浮 ---- */
        $(document).on("mouseenter", ".suspension .a", function(){
            var _this = $(this);
            var s = $(".suspension");
            var isService = _this.hasClass("a-service");
            var isServicePhone = _this.hasClass("a-service-phone");
            var isQrcode = _this.hasClass("a-qrcode");
            if(isService){ s.find(".d-service").show().siblings(".d").hide();}
            if(isServicePhone){ s.find(".d-service-phone").show().siblings(".d").hide();}
            if(isQrcode){ s.find(".d-qrcode").show().siblings(".d").hide();}
        });
        $(document).on("mouseleave", ".suspension, .suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("mouseenter", ".suspension .a-top", function(){
            $(".suspension").find(".d").hide();
        });
        $(document).on("click", ".suspension .a-top", function(){
            $("html,body").animate({scrollTop: 0});
        });
        $(window).scroll(function(){
            var st = $(document).scrollTop();
            var $top = $(".suspension .a-top");
            if(st > 400){
                $top.css({display: 'block'});
            }else{
                if ($top.is(":visible")) {
                    $top.hide();
                }
            }
        });

    });

    function clearUser() {
        //
        sessionStorage.removeItem("12345");
        $('#close').on('click',function(){
            location.href="home/index.shtml";
        });
    }
</script>
<body class="main_body">
	<div class="layui-layout layui-layout-admin">
		<!-- 顶部 -->
		<div class="layui-header header">
			<div class="layui-main">
				<a onclick="clearUser();" id="close" class="logo" style="margin-top: 0px;margin-left: -30px">家具通智能设计/拆单系统</a>
			    <!-- 天气信息 -->
			    <div class="weather">
			    	<div id="tp-weather-widget"></div>
				</div>
			    <!-- 顶部右侧菜单 -->
			    <ul class="layui-nav top_menu">
			    	<li class="layui-nav-item showNotice" id="showNotice" pc>
						<a href="javascript:;"><i class="iconfont icon-gonggao"></i><cite>系统公告</cite></a>
					</li>
			    	<li class="layui-nav-item" mobile>
			    		<a href="javascript:;" data-url="${ctx}/page/user/changePwd.html"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>设置</cite></a>
			    	</li>
			    	<li class="layui-nav-item" mobile>
			    		<a href="${ctx}/home/index.shtml" ><i class="iconfont icon-loginout"></i> 退出</a>
			    	</li>
					<li class="layui-nav-item lockcms" pc>
						<a href="javascript:;"><i class="iconfont icon-lock1"></i><cite>锁屏</cite></a>
					</li>
					<li class="layui-nav-item" pc>
						<a href="javascript:;">
							<img src="../../images/face.jpg" class="layui-circle" width="35" height="35">
							<cite>请叫我成哥</cite>
						</a>
						<dl class="layui-nav-child">
							<dd><a href="javascript:;" data-url="${ctx}/page/user/userInfo.html"><i class="iconfont icon-zhanghu" data-icon="icon-zhanghu"></i><cite>个人资料</cite></a></dd>
							<dd><a href="javascript:;" data-url="${ctx}/page/user/changePwd.html"><i class="iconfont icon-shezhi1" data-icon="icon-shezhi1"></i><cite>修改密码</cite></a></dd>
							<dd><a href="${ctx}/home/index.shtml"><i class="iconfont icon-loginout"></i><cite>退出</cite></a></dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
		<!-- 左侧导航 -->
		<div class="layui-side layui-bg-black" id="in">
			<div class="user-photo">
				<a class="img" title="我的头像" ><img src="${ctx}/images/logo.jpg"></a>
				<p style="margin-top: -10px">欢迎登录<span class="userName" ></span></p>
			</div>
			<div class="navBar layui-side-scroll"></div>
		</div>
		<!-- 右侧内容 -->
		<div class="layui-body layui-form" style="background-color: white">
			<div class="layui-tab marg0" lay-filter="bodyTab">
				<ul class="layui-tab-title top_tab">
					<li class="layui-this" lay-id=""><i class="iconfont icon-computer"></i> <cite>首页</cite></li>
				</ul>
				<div class="layui-tab-content clildFrame">
					<div class="layui-tab-item layui-show">
						<%--<iframe src="${ctx}/page/main.html"></iframe>--%>
							<a href="javascript:;" ><img  src="${ctx}/images/sheji.jpg" style="padding-left: 400px;margin-top: 300px">
							</a>
							<a href="javascript:;"><img src="${ctx}/images/sheji1.jpg" style="margin-top: 295px;padding-left: 400px"></a>
					</div>
						<%--<div style="font-size: 24px;margin-top: 480px;margin-left: 430px;">
							<a>新建订单</a>
							<a style="margin-left: 450px">设计/拆单</a>
						</div>--%>
				</div>
			</div>
			<div style="height:10000px;"></div>
			<div class="suspension">
				<div class="suspension-box">
					<a href="#" class="a a-service "><i class="i"></i></a>
					<a href="javascript:;" class="a a-service-phone "><i class="i"></i></a>
					<a href="javascript:;" class="a a-qrcode"><i class="i"></i></a>
					<%--<a href="#" class="a a-cart"><i class="i"></i></a>
					<a href="javascript:;" class="a a-top"><i class="i"></i></a>--%>
					<div class="d d-service">
						<i class="arrow"></i>
						<div class="inner-box">
							<div class="d-service-item clearfix">
								<a href="tencent://message/?uin=920098241&Site=qq&Menu=yes" class="clearfix"><span class="circle"><i class="i-qq"></i></span><h3>咨询在线客服</h3></a>
							</div>
						</div>
					</div>
					<div class="d d-service-phone">
						<i class="arrow"></i>
						<div class="inner-box">
							<div class="d-service-item clearfix">
								<span class="circle"><i class="i-tel"></i></span>
								<div class="text">
									<p>服务热线</p>
									<p class="red number">4001-123-456</p>
								</div>
							</div>
							<div class="d-service-intro clearfix">
								<p><i></i>功能和特性</p>
								<p><i></i>价格和优惠</p>
								<p><i></i>获取内部资料</p>
							</div>
						</div>
					</div>
					<div class="d d-qrcode">
						<i class="arrow"></i>
						<div class="inner-box">
							<div class="qrcode-img"><img src="${ctx}/images/side_ewm.jpg" alt=""></div>
							<p>微信服务号</p>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- 底部 -->
		<%--<div class="layui-footer footer">
			<p>copyright @2019 家具通智能设计/拆单系统 更多模板：<a href="http://www.mycodes.net/" target="_blank">源码之家</a>　　<a onclick="donation()" class="layui-btn layui-btn-danger l·ayui-btn-small">捐赠作者</a></p>
		</div>--%>
	</div>


	<!-- 锁屏 -->
	<div class="admin-header-lock" id="lock-box" style="display: none;width: auto;height: auto">
		<div class="admin-header-lock-img"><img src="${ctx}/images/face.jpg"/></div>
		<div class="admin-header-lock-name" id="lockUserName">请叫我成哥</div>
		<div class="input_btn">
			<input type="password" class="admin-header-lock-input layui-input" placeholder="请输入密码解锁.." name="lockPwd" id="lockPwd" />
			<button class="layui-btn" id="unlock">解锁</button>
		</div>
		<p>你猜!!!，否则不会解锁成功哦！！！</p>
	</div>
	<!-- 移动导航 -->
	<div class="site-tree-mobile layui-hide"><i class="layui-icon">&#xe602;</i></div>
	<div class="site-mobile-shade"></div>

	<script type="text/javascript" src="${ctx}/layui/layui.js"></script>
	<script type="text/javascript" src="${ctx}/js/nav.js"></script>
	<script type="text/javascript" src="${ctx}/js/leftNav.js"></script>
	<script type="text/javascript" src="${ctx}/js/index.js"></script>
</body>
</html>