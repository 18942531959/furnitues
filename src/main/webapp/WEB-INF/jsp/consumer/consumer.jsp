<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>浏览全城家居建材市场</title>
    <%@include file="/common/head.jsp"%>
    <script type="text/javascript" src="${ctx}/jsp/consumer/area.js"/>
    <script>
        console.log("欢迎浏览全城家具建材市场");
    </script>
    <style>

        td{
            width: 10%;
        }
        div#test1 >img{
            height: 400px;
            width: 100%;
            border: 0;
        }
        .layui-nav-item{
            position: fixed; left: 150px;z-index: 10;
        }
        #login{
            position: fixed; left: 75%; z-index: 10;
        }
        #tel{
            position: fixed; left: 85%; z-index: 10;
        }
        .scale img{
            background-size:contain;
            width:100%;
            height: auto;
        }

        #side{
            width: 250px;
            height: 300px;
            background-color: #000000;
            position:absolute;
            left: 0;
            top:45%;
        }
             
    </style>
    <style type="text/css">
        body{ background:#EEEEEE;margin:0; padding:0; font-family:"微软雅黑", Arial, Helvetica, sans-serif; }
        a{ color:#006600; text-decoration:none;}
        a:hover{color:#990000;}
        .info select{ border:1px #993300 solid; background:#FFFFFF;}
        button{
            border:1px solid #ccc;
            cursor:pointer;
            display:block;
            margin:auto;
            position:relative;
            top:100px;
        }
    </style>
    <script type="text/javascript">
        <%--广告滚动--%>
        $(function() {
            var $sidebar = $("#side");
            var $window = $(window);
            $window.scroll(function() {
                $sidebar.stop(true).animate({
                    'marginTop': $window.scrollTop()
                },1000);

            });
            window.onload=function(){
                $(window).trigger('scroll'); //页面加载完毕后自动触发事件
            };
            $(window).resize(function(){
                $(window).trigger('scroll'); //刷新窗口的scroll事件
            })
        });

        /*图片得轮播效果*/
        layui.use(['carousel', 'form'], function(){
            var carousel = layui.carousel
                ,form = layui.form;
            //常规轮播
            carousel.render({
                elem: '#test1'
                ,width: '100%'
                ,height: '480px'
                ,arrow: 'always'
            });
            //图片轮播
            carousel.render({
                elem: '#test10'
                ,interval: 3000
            });
            var $ = layui.$, active = {
                set: function(othis){
                    var THIS = 'layui-bg-normal'
                        ,key = othis.data('key')
                        ,options = {};

                    othis.css('background-color', '#5FB878').siblings().removeAttr('style');
                    options[key] = othis.data('value');
                    ins3.reload(options);
                }
            };
        });
        /*导航栏*/
        layui.use('element', function(){
            var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块
            //监听导航点击
            element.on('nav(demo)', function(elem){
                //console.log(elem)
                layer.msg(elem.text());
            });
        });
        /*流加载   懒加载图片  即店铺信息*/
        layui.use('flow', function() {
            var flow = layui.flow;
            //按屏加载图片
            flow.lazyimg({
                elem: '#LAY_demo3 img'
                ,scrollElem: '#LAY_demo3' //一般不用设置，此处只是演示需要。
            });
            flow.lazyimg({
                elem: '#LAY_demo4 img'
                ,scrollElem: '#LAY_demo4' //一般不用设置，此处只是演示需要。
            });
        });
    </script>
</head>
<body>
<header>
    <ul class="layui-nav" readonly="true">
        <%--地区三级联动--%>
        <li class="layui-nav-item" style="margin-left: -40px;"><font color="white" size="3">请选择地址:</font>
            <select id="s_province" name="s_province"></select>&nbsp;&nbsp;
            <select id="s_city" name="s_city" ></select>&nbsp;&nbsp;
            <select id="s_county" name="s_county"></select>
            <script type="text/javascript">_init_area();</script>
        </li>
        <li class="layui-nav-item" style="margin-left: 50px"><a href="">成品家居</a></li>
        <li class="layui-nav-item"><a href="">定制家居</a></li>
        <li class="layui-nav-item"><a href="">实木家居</a></li>
        <li class="layui-nav-item"><a href="">装修建材</a></li>
        <li class="layui-nav-item layui-this">
                <a href="javascript:;">装饰公司</a>
                <%--<dl class="layui-nav-child">
                    <dd><a href="">软装公司</a></dd>
                    <dd><a href="">五金</a></dd>
                    <dd><a href="">门窗</a></dd>
                    <dd><a href="">木工机械</a></dd>
                    <dd><a href="">金融公司</a></dd>
                </dl>--%>
            </li>
            <li class="layui-nav-item"><a href="">板材公司</a></li>
            <li class="layui-nav-item"><a href="">五金门窗</a></li>
            <li class="layui-nav-item"><a href="">木工机械</a></li>
            <li class="layui-nav-item"><a href="">金融公司</a></li>
       <li class="layui-nav-item" id="login"><a style="padding-left: 110px" href="${ctx}/home/personal">登录|注册</a></li>
    </ul>
</header>
<%--轮播器--%>
<div class="layui-carousel" id="test1" lay-filter="test1" style="margin-top: 58px">
    <div carousel-item="" class="scale">
        <div ><img src="${ctx}/images/jiaju.jpg"></div>
        <div class=""><img src="${ctx}/images/qnimage.jpg"></div>
        <div class=""><img src="${ctx}/images/qnimage.jpg"></div>
        <div class=""><img src="${ctx}/images/qnimage.jpg"></div>
        <div class=""><img src="${ctx}/images/qnimage.jpg"></div>
    </div>
</div>
<br>
<%--广告栏--%>
<div id="side">
    <img src="${ctx}/images/advertisement.jpg" width="250px" height="300px"/>
</div>
<%--商城列表--%>
<div class="swiper-container-solution">
    <div class="selected-solution">
        <div>
            <div class="swiper-container">
                <div class="layer-title">本地商城</div>
                <div class="solution-cardlist swiper-wrapper">
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_0.png" width="100%">
                            <h3>智能制造解决方案</h3>
                            <p>从研发设计仿真到生产车间现场的全流程数字化、智能化变革，实现敏捷创新、精细化运营。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>云设计</dd>

                                <dd>云仿真</dd>

                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
                                </a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_1.png" width="100%">
                            <h3>容灾备份解决方案</h3>
                            <p>为客户提供容灾备份服务，保障企业关键数据安全可靠和业务连续性。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>企业级数据保护即服务</dd>

                                <dd>高可用i2Availability</dd>

                                <dd>Veritas</dd>

                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
                                </a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/zhihuitingche.jpg" width="100%">
                            <h3>智慧园区解决方案（智慧停车）</h3>
                            <p>聚焦园区智慧停车场景，提供业界优质伙伴能力，打造智慧化停车解决方案能力。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd style="width: 100%">智慧交通一体化管理服务平台</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/shipinjiankong.jpg" width="100%">
                            <h3>智慧园区解决方案（视频监控）</h3>
                            <p>聚焦园区监控场景，依托云主机EI能力，构建智慧化、场景化视频监控综合解决方案。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>园区企业视频监控</dd>

                                <dd>消费者家庭视频监控</dd>

                                <dd>雪亮工程视频监控</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/zhihuijiaoyu.jpg" width="100%">
                            <h3>智慧教育解决方案</h3>
                            <p>基于云主机提供端到端智慧教育解决方案，涵盖智慧校园、智慧课堂、实训云平台等场景。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>泰克双创实践云平台</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_5.jpg" width="100%">
                            <h3>融合媒体解决方案</h3>
                            <p>基于云主机服务，面向大传媒行业用户提供“云+网+端”三位一体的一站式融合媒体解决方案。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>智慧媒体云平台</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_7.jpg" width="100%">
                            <h3>智慧医疗解决方案（医疗影像云）</h3>
                            <p>精准诊治医疗影像云平台，云化放射、超声等医疗业务，实现医生、患者、医疗过程等云上互动。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>
                                <dd>影像数据云服务</dd>

                                <dd>临床影像协同</dd>

                                <dd>全医技云服务</dd>

                                <dd>区域医技协同</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination solution-pagination"></div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>
</div>
<div class="swiper-container-solution">
    <div class="selected-solution">
        <div>
            <div class="swiper-container">
                <div class="layer-title">明星商城</div>
                <div class="solution-cardlist swiper-wrapper">
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_0.png" width="100%">
                            <h3>智能制造解决方案</h3>
                            <p>从研发设计仿真到生产车间现场的全流程数字化、智能化变革，实现敏捷创新、精细化运营。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>云设计</dd>

                                <dd>云仿真</dd>

                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
                                </a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_1.png" width="100%">
                            <h3>容灾备份解决方案</h3>
                            <p>为客户提供容灾备份服务，保障企业关键数据安全可靠和业务连续性。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>企业级数据保护即服务</dd>

                                <dd>高可用i2Availability</dd>

                                <dd>Veritas</dd>

                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
                                </a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/zhihuitingche.jpg" width="100%">
                            <h3>智慧园区解决方案（智慧停车）</h3>
                            <p>聚焦园区智慧停车场景，提供业界优质伙伴能力，打造智慧化停车解决方案能力。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd style="width: 100%">智慧交通一体化管理服务平台</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/shipinjiankong.jpg" width="100%">
                            <h3>智慧园区解决方案（视频监控）</h3>
                            <p>聚焦园区监控场景，依托云主机EI能力，构建智慧化、场景化视频监控综合解决方案。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>园区企业视频监控</dd>

                                <dd>消费者家庭视频监控</dd>

                                <dd>雪亮工程视频监控</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/zhihuijiaoyu.jpg" width="100%">
                            <h3>智慧教育解决方案</h3>
                            <p>基于云主机提供端到端智慧教育解决方案，涵盖智慧校园、智慧课堂、实训云平台等场景。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>泰克双创实践云平台</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_5.jpg" width="100%">
                            <h3>融合媒体解决方案</h3>
                            <p>基于云主机服务，面向大传媒行业用户提供“云+网+端”三位一体的一站式融合媒体解决方案。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>

                                <dd>智慧媒体云平台</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                    <div class="col-sm-4 swiper-slide">
                        <div class="solution-card">
                            <img src="statics/images/marketplace-selected-solution_7.jpg" width="100%">
                            <h3>智慧医疗解决方案（医疗影像云）</h3>
                            <p>精准诊治医疗影像云平台，云化放射、超声等医疗业务，实现医生、患者、医疗过程等云上互动。</p>
                            <dl class="overflow-hide cf">
                                <dt>包含产品</dt>
                                <dd>影像数据云服务</dd>

                                <dd>临床影像协同</dd>

                                <dd>全医技云服务</dd>

                                <dd>区域医技协同</dd>
                            </dl>
                            <span><a  href="#"><span class="arrow-more">了解详情</span><span class="arrow-f"></span></a>
							</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination solution-pagination"></div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>
</div>
<div class="site-footer">

    <div class="footer-related">

        <div class="footer-article w1210">

            <dl class="col-article">
                <dt>电商产品</dt>
                <dd>

                    <a href="#">商城</a>

                    <a href="#">云物流</a>

                    <a href="#">云ERP</a>

                    <a href="#">云产品库</a>

                    <a href="#">收银狗</a>

                </dd>
            </dl>

            <dl class="col-article">
                <dt>行业方案</dt>
                <dd>

                    <a href="#">生鲜电商</a>

                    <a href="#">农村电商</a>

                    <a href="#">商超百货</a>

                    <a href="#">母婴电商</a>

                    <a href="#">智慧社区</a>

                </dd>
            </dl>

            <dl class="col-article">
                <dt>帮助中心</dt>
                <dd>

                    <a href="#">视频教程</a>

                    <a href="#">云商城</a>

                    <a href="#">云物流</a>

                    <a href="#">云ERP</a>

                    <a href="#">更新日志</a>

                </dd>
            </dl>

            <dl class="col-article col-article-spe">
                <dt>联系我们</dt>
                <dd>
                    <p><i class="iconfont orange">&#xe746;</i>400-078-5268</p>
                    <p><i class="iconfont blue">&#xe745;</i>800007396</p>
                </dd>
            </dl>

            <div class="col-code fl">
                <div class="code">
                    <img src="statics/images/wx.png" alt="微信公众号">
                </div>
                <p>官方微信公众号</p>
            </div>

        </div>

        <div class="footer-links">
            <span>友情链接：</span>
            <!-- 友情链接循环开始 -->

            <a href="#" title="">xxx</a>

            <a href="#" title="">云商城注册</a>

            <a href="#" title="">云产品库</a>

            <a href="#" title="">收银狗</a>

            <a href="#" title="">神码收银</a>

            <a href="#" title="">云物流</a>

            <a href="#" title="">云ERP</a>

            <a href="#" title="">生鲜电商</a>

            <a href="#" title="">农村电商</a>

            <a href="#" title="">母婴电商</a>

            <a href="#" title="">商之论坛</a>

            <a href="#" title="">动画公司</a>

            <a href="#" title="">电商学院</a>

            <!-- 友情链接循环结束 -->
        </div>

        <div class="footer-info w1210">
            <div class="info-text">
                <!-- 底部导航 -->
                <p class="nav-bottom">

                    <a href="#">公司简介</a>

                    <em>|</em>

                    <a href="#">联系我们</a>

                    <em>|</em>

                    <a href="#">官网论坛</a>

                    <em>|</em>

                    <a href="#">投诉建议</a>

                    <em>|</em>

                    <a href="#">站点地图</a>

                </p>
                <p class="copyright">
                    秦皇岛xxx(www.xxxx.com) 版权所有 <em></em>
                    <a href="#" rel="nofollow">冀ICP备xxxxx号</a>
                </p>
                <p class="company-info">河北省秦皇岛市海港区xxxxxxx　</p>
                <p class="qualified">

                </p>
            </div>

        </div>

    </div>
</div>
</body>

</body>
</html>

