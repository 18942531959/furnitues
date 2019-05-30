<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="/common/head.jsp"%>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="家具通云订单生产系统，实现前后端一体化无缝对接，一键下单拆单，以信息化驱动大规模生产，提升定制家具的生产效率和管理">
    <meta name="keywords" content="云订单,前后端一体化，拆单软件，定制家具生产">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>家具通云订单系统实现定制家具</title>
    <link rel="icon" type="img/x-ico" href="${ctx}/jsp/favicon.ico">
    <link rel="stylesheet" href="${ctx}/css/cloudOrder.css">
<%--    <link rel="stylesheet" href="${ctx}/css/indet/Common.css">--%>
    <script src="${ctx}/js/indent/BackToTop.js"></script>
    <style>
        .wildui-headerNav{background-color:#eee;}
        .nav-content{height:30px;line-height:30px;}
        .mall-header{padding-left: 80px;line-height:80px;}
        .mall-menu .menu-sort>a{color:#fff;font-size:14px;font-weight:bold;}
        .mall-menu .menu-sort>ul{width:90px;position:absolute;top:40px;left:0;text-align:center;display:none;background-color: #fff;z-index:999;}
        .mall-menu .menu-sort>ul li,.mall-menu .menu-sort>ul li a{height:30px;line-height:30px;display:block;}
        .mall-menu .menu-sort>ul li:hover{background-color:#14eaf7;}
        .new-main {
            height: auto;
            background-color: #fff;
        }
    </style>
</head>
<body>
<div class="cloudOrder page">
    <div class="wildui-layout new-main">
        <!-- 顶部导航区域 -->
        <div class="wildui-headerNav">
            <div class="wildui-main nav-content">
                <a href="https://www.3vjia.com" style="padding-left: 100px;">家具通首页</a>
            </div>
        </div>
        <!-- 头部搜索区域 Start-->
        <div class="mall-header wildui-marT20 wildui-marB20 wildui-textCenter">
            <div class="wildui-main wildui-overhi">
                <div class="wildui-fl wildui-header-headerLogo" >
                    <img src="${ctx}/images/log2.jpg" />
<%--                    <font face="立体" color="black" style="font-size: 25px;"></font>--%>
                    <span style="color: black;line-height: 88px;font-size: 20px">Furniture through cloud intelligent design/disassembly system</span>
                    <button style="float: right;margin-top: 25px;margin-right: 100px;" id="login" class="layui-btn layui-btn-normal"> <a href="/home/producerLogin" class="wildui-btn wildui-btn-middle wildui-bg-blue wildui-text-white">登录</a></button>
                </div>
            </div>
        </div>
        <!-- 头部搜索区域 End-->
    </div>
    <div class="cloudOrder__banner box">
        <div class="banner__intro box__wrap">
            <p class="banner__title">家具通<span class="banner__title--text">云端</span>智能设计/拆单系统</p>
            <strong><p class="banner__text" style="margin-top: 56px;"></p></strong>
            <span id="ydd_btn__join_advisory_1" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-加盟咨询'); advisoryOptionSelected(1);">加盟咨询</span>
            <span id="ydd_btn__free_try_1" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-申请试用'); advisoryOptionSelected(2);">申请试用</span>

            <p class="join__contact" style="margin-top: 60px;">
                <span class="join__contact--title">专家热线</span><span class="join__contact--text"><span class="join__contact--orange">400-000-0000</span></span>‭
            </p>
        </div>
    </div>
    <div class="cloudeOrder__hard box">
        <div class="hard__bd box__wrap">
            <p class="hard__text">创新引领行业未来</p>
            <div class="hard__wrap">
                <span class="hard__img1"><img alt="定制家具生产" src="${ctx}/images/CenterTop.jpg"></span>
                <ul class="hard__list">
                    <li class="hard__item">
                        <p class="hard__info" style="font-size: 21px"><span class="hard__number">1</span>
                        简洁、大方、无需设计、无需拆单、我们准备了海量数据库、一键生成设计图纸、<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一键生成NC文件；
                        </p>
                    </li>
                    <li class="hard__item add__left">
                        <p class="hard__info" style="font-size: 21px"><span class="hard__number">2</span>
                            数据库后台每天实时更新、确保用户第一时间可获得市面主流产品；
                        </p>
                    </li>
                    <li class="hard__item add__left">
                        <p class="hard__info" style="font-size: 21px"><span class="hard__number">3</span>
                            软件比传统软件功能增加了50%、优化了传统拆单软件多余的功能；
                        </p>
                    </li>
                    <li class="hard__item">
                        <p class="hard__info" style="font-size: 21px"><span style="font-size: 10px" class="hard__number">4</span>
                        软件完美兼容1010、海迅、酷家乐、云熙等市面上主流的设计拆单软件。
                        </p>
                    </li>
                </ul><span class="hard_img2">
                <img src="https://ydd.3vjia.com/Assets/Image/cloudOrder/hard_img2.png" STYLE="margin-left: 60px;margin-bottom: 50px;" alt="定制家具生产">
            </span>
            </div>
        </div>
    </div>
    <div class="cloud__firm box">
        <div class="firm__wrap box__wrap">
            <h2 class="firm__title box__title">完成对接的生产设备制造企业</h2>
            <ul class="firm__list box__list">
                <li class="firm__item box__item firm__item1"></li>
                <li class="firm__item box__item firm__item2"></li>
                <li class="firm__item box__item firm__item3"></li>
                <li class="firm__item box__item firm__item4"></li>
                <li class="firm__item box__item firm__item5"></li>
                <li class="firm__item box__item firm__item6"></li>
                <li class="firm__item box__item firm__item7"></li>
                <li class="firm__item box__item firm__item8"></li>
            </ul>
        </div>
    </div>
                    <div style="width: 100%;height: 50px;line-height: 50px;text-align: center;font-size: 14px;color: #999;background: black">©2012～2019 All rights reserved齐能信息科技有限公司 版权所有鄂ICP备14070053号-2</div>
    <div class="window">
        <div class="window__nav">
            <div class="nav__item--box">
                <div id="btnRegister0" class="r-nav__item hover__item register__item js-register__ctrl" resource="BCP_Cabinet">
                    <div class="r-nav__icon window__nav-register"></div>
                    <div id="ydd_btn__register" class="r-nav__name">登记</div>
                </div>
                <div class="r-nav__item nav__ask hover__item">
                    <div class="r-nav__icon window__nav-feedback"></div>
                    <div id="ydd_btn_wechat" class="r-nav__name">微信</div>
                    <div class="window__out">
                        <div class="window__content">
                            <div class="content__item">

                                <div class="content__text">
                                   <%-- <p class="content__title consult-number">至造云订单</p>
                                    <p class="content__title">至爱智家（三维家全资子公司）旗下的智慧生产系统。</p>--%>
                                    <img src="/Assets/Image/qrcode_for_gh_5a3379c4462d_258.jpg" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
               <%-- <div id="btnRegister0" class="r-nav__item hover__item register__item js-register__ctrl" resource="BCP_Cabinet">
                    <div class="r-nav__icon window__nav-register"></div>
                    <div id="ydd_btn__register" class="r-nav__name">回到顶部</div>
                </div>--%>
            </div>
           <%-- <div class="r-nav__top hover__item js-top" style="transform: translate(0px, 0px); transition: transform 0.5s ease-in-out 0s;">
                <div class="r-nav__icon window__nav-top"></div>
               &lt;%&ndash; <div class="r-nav__name">回顶部</div>&ndash;%&gt;
            </div>--%>
        </div>
    </div>
    <div class="register">
        <div class="register__mask">
            <div class="register__pop">
                <div class="register__header">
                    <div class="register__closeBtn">×</div>
                    <h2 class="register__title">登记</h2>
                    <p class="register__des">提交后一个工作日内联系您</p>
                    <p class="register__des">如果想了解更多可以咨询热线：15322261447</p>
                </div>
                <div class="register__content">
                    <form class="register__form" action="">
                        <div class="select__wrap mrB14">
                            <div class="select__value select__identity">
                                <input type="text" placeholder="您想要咨询什么" readonly="" class="identity" id="inputIdentity">
                                <span class="select__icon"></span>
                                <span class="errormsg identityMsg">类型未选择</span>
                            </div>
                            <div class="select__box">
                                <ul>
                                    <li class="select__option" data-name="Supplier" data-id="1">代理商加盟</li>
                                    <li class="select__option" data-name="Customer" data-id="2">软件试用</li>
                                    <li class="select__option" data-name="Others" data-id="0">其他</li>
                                </ul>
                            </div>
                        </div>

                        <div class="input__wrap mrB14 input__name">
                            <input type="text" placeholder="填写您的姓名" class="name" maxlength="10"> <span class="errormsg nameMsg">姓名未填写</span>
                        </div>
                        <div class="input__wrap mrB14 input__phone">
                            <input type="text" placeholder="填写您的手机号码" class="phone" maxlength="11"> <span class="errormsg phoneMsg">手机号码未填写</span>
                        </div>

                        <div class="address-wrap mt24">
                            <select datatype="*" nullmsg="请选择省" id="yy-province">
                                <option value="" selected="selected">请选择省</option>
                            </select>
                            <select datatype="*" nullmsg="请选择市" id="yy-city">
                                <option value="" selected="selected">请选择市</option>
                            </select>
                        </div>
                        <input type="button" id="ydd_btn__SaveData" value="提交" class="submit__btn">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="register-success">
        <div class="register-success__mask">
            <div class="register-success__pop">
                <div class="register-success__closeBtn">×</div>
                <div class="register-success__pic"></div>
                <h2 class="register-success__title">登记成功</h2>
                <p class="register-success__des">我们将会在1个工作日内联系您</p>
                <div class="register-success__btn">确定</div>
            </div>
        </div>
    </div>
    <input id="hid_Right" type="hidden" value="//www.3vjia.com/home/CreateGuestAppointment">
    <input type="hidden" value="BCP_Right" id="hid_IntentionRegister">
</div>
<script type="text/JavaScript" src="//ydd.3vjia.com/Scripts/page/ShoppingMall/MallCommon.js?v=swj_V1.19.6.2"></script>
</body>
</html>
