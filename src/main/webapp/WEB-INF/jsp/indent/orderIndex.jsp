<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="三维家云订单生产系统，实现前后端一体化无缝对接，一键下单拆单，以信息化驱动大规模生产，提升定制家具的生产效率和管理">
    <meta name="keywords" content="云订单,前后端一体化，拆单软件，定制家具生产">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>三维家云订单系统实现定制家具前后端一体化拆单生产</title>
    <link rel="icon" type="img/x-ico" href="jsp/favicon.ico">
    <link rel="stylesheet" href="css/cloudOrder.css">
    <style>
        .wildui-headerNav{background-color:#eee;}
        .nav-content{height:30px;line-height:30px;}
        .mall-header{height:80px;line-height:80px;}
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
                <a href="https://www.3vjia.com">三维家首页</a>
            </div>
        </div>
        <!-- 头部搜索区域 Start-->
        <div class="mall-header wildui-marT20 wildui-marB20 wildui-textCenter">
            <div class="wildui-main wildui-overhi">
                <div class="wildui-fl wildui-header-headerLogo">
                    <img src="//ydd.3vjia.com/Content/Images/logo_order.png?v=swj_V1.19.6.2" />
                    <span class="wildui-fs18 wildui-text-blue wildui-marL5 wildui-lineBlock">云订单</span>
                </div>

                <div class="wildui-fr">
                    <a href="/Account/Login" class="wildui-btn wildui-btn-middle wildui-bg-blue wildui-text-white">登录</a>
                </div>
            </div>
        </div>
        <!-- 头部搜索区域 End-->
    </div>



    <div class="cloudOrder__banner box">
        <div class="banner__intro box__wrap">
            <p class="banner__title">三维家<span class="banner__title--text">云订单</span>生产系统</p>
            <p class="banner__text">信息化驱动大规模生产</p>
            <span id="ydd_btn__join_advisory_1" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-加盟咨询'); advisoryOptionSelected(1);">加盟咨询</span>
            <span id="ydd_btn__free_try_1" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-申请试用'); advisoryOptionSelected(2);">申请试用</span>

            <p class="join__contact">
                <span class="join__contact--title">专家热线</span><span class="join__contact--text">巩经理：<span class="join__contact--orange">15322261447</span> / 黄经理：‬</span>‭<span class="join__contact--orange">13143396331</span>
            </p>
        </div>
    </div>
    <div class="cloudeOrder__hard box">
        <div class="hard__bd box__wrap">
            <p class="hard__text">定制家具生产行业的业务困境</p>
            <div class="hard__wrap">
                <span class="hard__img1"><img alt="定制家具生产" src="../Assets/Image/cloudOrder/hard_img1.png"></span>
                <ul class="hard__list">
                    <li class="hard__item">
                        <p class="hard__info"><span class="hard__number">1</span>从设计方案到生产，工艺不规范，人工计算，出差率高；</p>
                    </li>
                    <li class="hard__item add__left">
                        <p class="hard__info"><span class="hard__number">2</span>设备利用率低，板材利用率低，浪费严重；</p>
                    </li>
                    <li class="hard__item add__left">
                        <p class="hard__info"><span class="hard__number">3</span>加工生产流程对技术工人依赖度高，人工成本高；</p>
                    </li>
                    <li class="hard__item">
                        <p class="hard__info"><span class="hard__number">4</span>处理订单过程中，缺件、漏件、错件发生率高。</p>
                    </li>
                </ul><span class="hard_img2"><img src="../Assets/Image/cloudOrder/hard_img2.png" alt="定制家具生产"></span>
            </div>
        </div>
    </div>
    <div class="house__solution box">
        <div class="solution__bd box__wrap">
            <p class="solution__text">
                <i></i><span class="solution__text--title">定制家具生产行业</span><i></i>
            </p>
            <h2 class="solution__title">如何通过三维家云订单生产系统解决业务困境?</h2>
        </div>
    </div>
    <div class="cloud__advantage box">
        <div class="advantage__wrap box__wrap">
            <h2 class="box__title">前后端一体化无缝对接</h2>
            <p class="box__text">简单易上手 ，高效多产，效率提升10倍</p>
            <ul class="advantage__list box__list">
                <li class="advantage__item box__item">
                    <div class="item__intro">
                        <p class="intro__number">1</p>
                        <h2 class="intro__title">一键精准快速拆单</h2>
                        <p class="intro__text">无需CAD文件，方案图直接拆单生产，自动工艺规范解析、一键导出生产数据。</p>
                    </div>
                    <div class="item__img">
                        <img alt="一键精准快速拆单" src="../Assets/Image/cloudOrder/main__txtbox_first.gif">
                    </div>
                </li>
                <li class="advantage__item box__item">
                    <div class="item__img">
                        <img alt="智能优化排产" src="../Assets/Image/cloudOrder/main__txtbox_second.gif">
                    </div>
                    <div class="item__intro">
                        <p class="intro__number">2</p>
                        <h2 class="intro__title">智能优化排产</h2>
                        <p class="intro__text">多订单混合排产，规划开料最优方案；板材开料利用率高达95%，为企业省时省料。</p>
                    </div>
                </li>
                <li class="advantage__item box__item">
                    <div class="item__intro">
                        <p class="intro__number">3</p>
                        <h2 class="intro__title">无缝对接生产设备</h2>
                        <p class="intro__text">三维家自主研发，一键输出NC加工文件，无缝对接各类数控设备，自动核算材料成本。</p>
                    </div>
                    <div class="item__img">
                        <img alt="无缝对接家具生产设备" src="../Assets/Image/cloudOrder/main__txtbox_third.gif">
                    </div>
                </li>
                <li class="advantage__item box__item">
                    <div class="item__img">
                        <img alt="MPM条码管控实时跟踪" src="../Assets/Image/cloudOrder/main__txtbox_fourth.gif">
                    </div>
                    <div class="item__intro">
                        <p class="intro__number">4</p>
                        <h2 class="intro__title">MPM条码管控实时跟踪</h2>
                        <p class="intro__text">一个条形码贯穿整个生产流程含开料、生产、安装、打包、仓储管理，让门店实时了解订单状态，最大降低板件遗漏率。</p>
                    </div>
                </li>
            </ul>
            <br /><br />
            <span id="ydd_btn__join_advisory_2" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-加盟咨询'); advisoryOptionSelected(1);">加盟咨询</span>
            <span id="ydd_btn__free_try_2" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-申请试用'); advisoryOptionSelected(2);">申请试用</span>
        </div>
    </div>
    <div class="cloud__order box">
        <div class="order__wrap box__wrap">
            <h2 class="box__title order__title">一键下单拆单<span class="order__title--light">亮点功能</span></h2>
            <p class="box__text order__text">数据一体化</p>
            <ul class="order__list box__list">
                <li class="order__item box__item">
                    <div class="order__img order__img1"></div>
                    <p class="order__item--title">一个数据源</p>
                    <p class="order__item--text">门店设计到工厂拆单生产设计方案就是拆单方案只需一个库，无需二次画图</p>
                </li>
                <li class="order__item box__item">
                    <div class="order__img order__img2"></div>
                    <p class="order__item--title">一键下单</p>
                    <p class="order__item--text">设计文件一键下单，自动提取客户、订单、材料等信息、避免下单出错</p>
                </li>
                <li class="order__item box__item">
                    <div class="order__img order__img3"></div>
                    <p class="order__item--title">一键纠错</p>
                    <p class="order__item--text">参数化尺寸任意调整，切角转角智能避让，自动一键纠错</p>
                </li>
                <li class="order__item box__item">
                    <div class="order__img order__img4"></div>
                    <p class="order__item--title">一键工艺检查</p>
                    <p class="order__item--text">系统还原验证生产数据，智能检测柜体工艺结构，设计不出错，拆单效率高</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="house__benefit library__copy">
        <div class="benefit__wrap copy__wrap">
            <h2 class="benefit__title">种子库复制</h2>
            <p class="benefit__text">快速建产品库</p>
            <ul class="benefit__list copy__list">
                <li class="benefit__item copy__item">
                    <div class="benefit__img copy__img">
                        <img alt="门板款式任意使用" src="../Assets/Image/cloudOrder/material1.png">
                    </div>
                    <p class="benefit__item--title">门板库</p>
                    <p class="benefit__item--text">海量最新门板款式任意使用</p>
                </li>
                <li class="benefit__item copy__item">
                    <div class="benefit__img copy__img">
                        <img alt="五金配件一键调用" src="../Assets/Image/cloudOrder/material2.png">
                    </div>
                    <p class="benefit__item--title">五金库</p>
                    <p class="benefit__item--text">多品牌完善的五金一键调用</p>
                </li>
                <li class="benefit__item copy__item">
                    <div class="benefit__img copy__img">
                        <img alt="家具组合款式一键调用" src="../Assets/Image/cloudOrder/material3.png">
                    </div>
                    <p class="benefit__item--title">组合库</p>
                    <p class="benefit__item--text">海量组合款式一键调用</p>
                </li>
                <li class="benefit__item copy__item">
                    <div class="benefit__img copy__img">
                        <img alt="自由组合部件尺寸参数" src="../Assets/Image/cloudOrder/material4.png">
                    </div>
                    <p class="benefit__item--title">部件库</p>
                    <p class="benefit__item--text">尺寸参数公式化设定自由组合</p>
                </li>
                <li class="benefit__item copy__item">
                    <div class="benefit__img copy__img">
                        <img alt="各板材厂材料信息可使用" src="../Assets/Image/cloudOrder/material5.png">
                    </div>
                    <p class="benefit__item--title">原材料库</p>
                    <p class="benefit__item--text">各大板材厂材料信息可供使用</p>
                </li>
                <li class="benefit__item copy__item">
                    <div class="benefit__img copy__img">
                        <img alt="柜体结构灵活符合规范" src="../Assets/Image/cloudOrder/material6.png">
                    </div>
                    <p class="benefit__item--title">柜体库</p>
                    <p class="benefit__item--text">柜体结构灵活企业规范完美融入</p>
                </li>
            </ul>
            <br />
            <span id="ydd_btn__join_advisory_3" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-加盟咨询'); advisoryOptionSelected(1);">加盟咨询</span>
            <span id="ydd_btn__free_try_3" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-申请试用'); advisoryOptionSelected(2);">申请试用</span>
            <span class="copy_img1"><img src="../Assets/Image/cloudOrder/copy_img1.png"></span><span class="copy_img2"><img src="../Assets/Image/cloudOrder/copy_img2.png"></span>
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
    <div class="core box">
        <div class="core__wrap box__wrap">
            <h2 class="core__title box__title">三维家，以用户为中心</h2>
            <p class="core__text box__text">用心打造完善、强大的服务体系</p>
            <ul class="core__list box__list">
                <li class="core__item box__item">
                    <div class="core__img core__img1"></div>
                    <p class="core__item--text">软件视频、图文教程免费在线观看学习</p>
                </li>
                <li class="core__item box__item">
                    <div class="core__img core__img2"></div>
                    <p class="core__item--text">海量素材定期更新，免费下载和使用</p>
                </li>
                <li class="core__item box__item">
                    <div class="core__img core__img3"></div>
                    <p class="core__item--text">服务热线、网络客服多渠道及时解答用户疑问</p>
                </li>
                <li class="core__item box__item">
                    <div class="core__img core__img4"></div>
                    <p class="core__item--text">线上线下培训，确保零基础用户快速上手</p>
                </li>
            </ul>
            <br /><br />
            <span id="ydd_btn__join_advisory_4" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-加盟咨询'); advisoryOptionSelected(1);">加盟咨询</span>
            <span id="ydd_btn__free_try_4" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-申请试用'); advisoryOptionSelected(2);">申请试用</span>
        </div>
    </div>
    <div class="cooperation box">
        <div class="cooperation__info box__wrap">
            <h2 class="box__title cooperation__title">合作品牌</h2>
            <p class="box__text cooperation__text">助力合作伙伴提供智慧解决方案，携手共建双赢</p>
            <div class="cooperation__banner"></div>
        </div>
    </div>
    <div class="join">
        <div class="join__intro">
            <h2 class="join__title">加入我们，与5000+企业一起改变</h2>
            <br /><br />
            <span id="ydd_btn__join_advisory_5" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-加盟咨询'); advisoryOptionSelected(1);">加盟咨询</span>
            <span id="ydd_btn__free_try_5" class="free_try JS-register" onclick="SetEventClick('云订单', '头部-申请试用'); advisoryOptionSelected(2);">申请试用</span>

            <p class="join__contact">
                <span class="join__contact--title">专家热线</span><span class="join__contact--text">巩经理：<span class="join__contact--orange">15322261447</span> / 黄经理：‬</span>‭<span class="join__contact--orange">13143396331</span>
            </p>
        </div>
    </div>
    <div class="footer">
        <div class="footer__product">
            <div class="footer__inner">


                <div class="footer__ft">
                    <div class="footer__infowrap">
                        <p class="footer__copyright">Copyright © 2012-2018 广东三维家信息科技有限公司 版权所有.</p>
                        <p class="footer__police">
                            <i class="f-police__img"></i>  <a rel="nofollow" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010602002700" target="_blank">粤公网安备 44010602002700号</a>     <a target="_blank" rel="nofollow" href="http://www.miitbeian.gov.cn">粤ICP备14070053号</a>
                        </p>
                    </div>
                    <ul class="footer__safeWrap">
                        <li class="footer__safeWrap--list">
                            <a target="_blank" href="https://v.pinpaibao.com.cn/authenticate/cert/?site=www.3vjia.com&at=business"><i class="footer__safeWrap--img1"></i></a>
                        </li>
                        <li class="footer__safeWrap--list">
                            <a target="_blank" href="http://si.trustutn.org/info?sn=468170713029378551603&certType=1"><i class="footer__safeWrap--img2"></i></a>
                        </li>
                        <li class="footer__safeWrap--list">
                            <a target="_blank" href="http://www.gzjd.gov.cn/"><i class="footer__safeWrap--img3"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
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
                                    <p class="content__title consult-number">至造云订单</p>
                                    <p class="content__title">至爱智家（三维家全资子公司）旗下的智慧生产系统。</p>
                                    <img src="/Assets/Image/qrcode_for_gh_5a3379c4462d_258.jpg" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="r-nav__top hover__item js-top" style="transform: translate(0px, 0px); transition: transform 0.5s ease-in-out 0s;">
                <div class="r-nav__icon window__nav-top"></div>
                <div class="r-nav__name">回顶部</div>
            </div>
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
</body>
</html>
