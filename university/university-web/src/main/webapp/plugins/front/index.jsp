<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>居家养老服务平台</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="${basePath}/resources/css/uplan.min.css">
    <link href="${basePath}/resources/css/style.css" rel="stylesheet">
    <link href="${basePath}/plugins/front/css/myStyle.css" rel="stylesheet">
</head>
<body>

<body>
<div id="wrap">
    <!-- 头部start -->
    <%@include file="/plugins/front/common/header.jspf" %>

   <!-- 内容start -->
    <div class="main-content">
         <div class="g-banner pr">

             <div class="menuContent">
                 <div class="item" >
                     <div class="box">
                         <a target="_blank" >
                             <p class="group">书法</p>
                         </a>
                         <p class="detail">
                             <a class="mr15">书法</a>
                             <a class="mr15">书法</a>
                             <a class="mr15">书法</a>
                         </p>
                     </div>
                     <div class="submenu b hide">
                         <div class="innerBox ">
                             <div class="subinnerBox">
                                 <div class="title">分类目录</div>
                                 <a>书法</a><span class="ml10 mr10">/</span>
                                 <a>书法</a><span class="ml10 mr10">/</span>
                                 <a>书法</a><span class="ml10 mr10">/</span>
                                 <a>书法</a><span class="ml10 mr10">/</span>
                                 <div class="title recommend">推荐</div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="item" >
                     <div class="box">
                         <a target="_blank" >
                             <p class="group">画画</p>
                         </a>
                         <p class="detail">
                             <a class="mr15">画画</a>
                             <a class="mr15">画画</a>
                             <a class="mr15">画画</a>
                         </p>
                     </div>
                     <div class="submenu b hide">
                         <div class="innerBox ">
                             <div class="subinnerBox">
                                 <div class="title">分类目录</div>
                                 <a>画画</a><span class="ml10 mr10">/</span>
                                 <a>画画</a><span class="ml10 mr10">/</span>
                                 <a>书法</a><span class="ml10 mr10">/</span>
                                 <a>书法</a><span class="ml10 mr10">/</span>
                                 <div class="title recommend">推荐</div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="item" >
                     <div class="box">
                         <a target="_blank" >
                             <p class="group">唱歌</p>
                         </a>
                         <p class="detail">
                             <a class="mr15">唱歌</a>
                             <a class="mr15">唱歌</a>
                             <a class="mr15">唱歌</a>
                         </p>
                     </div>
                 </div>
                 <div class="item" >
                     <div class="box">
                         <a target="_blank" >
                             <p class="group">书法</p>
                         </a>
                         <p class="detail">
                             <a class="mr15">书法</a>
                             <a class="mr15">书法</a>
                             <a class="mr15">书法</a>
                         </p>
                     </div>
                 </div>
             </div>
        </div>
        <div class="outwrap-recomend up-clearfix">
            <div class="contentwrap ">
                <div class="recomend">实战推荐 </div >
                <div class="recomendContent clearfix">


                    <div class="box js-upAni">
                        <a href="" data-ast="xiaomutj_1_509">
                            <div class="pr h100">
                                <img src="${basePath}/resources/images/active1.jpg" height="124" width="100%" />

                                <div class="box_bottom "><span class="ml20 fl color-red">书法</span><span class="fr mr20">已有20人参加</span></div>
                            </div>
                        </a>
                    </div>


                    <div class="box js-upAni">
                        <a href=" " data-ast="xiaomutj_1_505">
                            <div class="pr h100">
                                <img src="${basePath}/resources/images/active2.png" height="124" width="100%" />

                                <div class="box_bottom "><span class="ml20 fl color-red">唱歌</span><span class="fr mr20">已有30人参加</span></div>
                            </div>
                        </a>
                    </div>


                    <div class="box js-upAni">
                        <a href=" " data-ast="xiaomutj_1_513">
                            <div class="pr h100">
                                <img src="${basePath}/resources/images/active3.jpg" height="124" width="100%" />
                                <div class="box_bottom "><span class="ml20 fl color-red">跑步</span><span class="fr mr20">已有40人参加</span></div>
                            </div>
                        </a>
                    </div>


                    <div class="box js-upAni">
                        <a href="" data-ast="xiaomutj_1_511">
                            <div class="pr h100">
                                <img src="${basePath}/resources/images/active4.jpg" height="124" width="100%" />
                                <div class="box_bottom "><span class="ml20 fl color-red">书法</span><span class="fr mr20">已有13人参加</span></div>
                            </div>
                        </a>
                    </div>
                    <div class="box js-upAni">
                        <a href="" data-ast="xiaomutj_1_511">
                            <div class="pr h100">
                                <img src="${basePath}/resources/images/active5.jpg" height="124" width="100%" />
                                <div class="box_bottom "><span class="ml20 fl color-red">比赛</span><span class="fr mr20">已有30人参加</span></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- 	内容end -->

</div>
    <div class="login-bg">
        <div class="rl-modal in">
        </div>
        <div class="login-bg">
    	<form action="${basePath}/module/told/oldLogin" method="post">
        <div class="rl-modal in">
        </div>
        <div class='login-con'>
            <div class="up-col-xs-10 up-col-sm-10 up-col-xs-offset-1 up-col-sm-offset-1">
                <h3 class="up-text-center tmpl_mar30">用户登录</h3>
                <div class="up-input-group up-input-group-lg tmpl_mar30">
                    <span class="up-input-group-addon"><span class="up-icon up-icon-user"></span></span>
                    <input type="text" class="up-form-control" id="username" name="username" placeholder="用户名" aria-describedby="sizing-addon2"
                    value="${cookie.username.value }">
                </div>
                <div class="up-input-group up-input-group-lg tmpl_mar20">
                    <span class="up-input-group-addon"><span class="up-icon up-icon-lock"></span></span>
                    <input type="password" class="up-form-control" placeholder="密码" name="password" value="${cookie.password.value }"
                     aria-describedby="sizing-addon2">
                </div>
                <div class="tmpl_mar20">
                    <input class="up-btn up-btn-primary up-btn-lg up-btn-block" type="submit" value="登陆">
                </div>
                <div class="login_ex tmpl_mar20">
							<c:if test="${empty cookie.username.value }">							
								<input type="hidden" value="1" name="rmb">
							</c:if>
							<c:if test="${!empty cookie.username.value }">							
								<input type="hidden" value="1" name="rmb" checked="checked">
							</c:if>
				</div>
                <div class="login_ex tmpl_mar20">
                    <a href="javascript:void(0);" class="up-pull-left userReg">注册</a>
                    <a href="javascript:void(0);" class="up-row up-pull-right">忘记密码 <span class="up-badge">?</span></a>
                </div>

            </div>
        </div>
      </form>
    </div>
    </div>
    <div class="reg-bg">
        <div class="rl-modal">
        </div>
        <div class='login-con'>
                <div class="up-panel-heading"> <span>填写注册资料</span>

                </div>
                <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con">
                	<form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label for="inputName" class="up-col-sm-3 up-control-label zi">用户名</label>
                            <div class="up-col-sm-6">
                                <input type="text" class="up-form-control my-form-control" id="inputName"
                                value="${old.username }">
                            </div>
                        </div></form>
                        <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label for="inputName" class="up-col-sm-3 up-control-label zi">性别</label>
                            <div class="up-col-sm-6">
                                <select id="select1" class="up-form-control my-form-control" value="${old.sex }">
                                    <option>男</option>
                                    <option>女</option>
                                </select>
                            </div>
                        </div>
                       </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi" >密码</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="password" id="password" 
                                value="${old.password }">
                            </div>
                        </div>
                        </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi">确认密码</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control"  type="password"  id="repassword" 
                                >
                            </div>
                        </div>
                         </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label for="inputName" class="up-col-sm-3 up-control-label zi">姓名</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="email" id="inputName1"
                                value="${old.name }">
                            </div>
                        </div>
                         </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi" for="inputPhone">联系方式</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="email" id="inputPhone"
                                value="${old.phone }">
                            </div>
                        </div>
                         </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi">子女联系方式</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" id="urgent" type="text" 
                                value="${old.urgent}">
                            </div>
                        </div>
                         </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi" >年龄</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" id="age" type="text"
                                value="${old.age }">
                            </div>
                        </div>
                         </form>
                       <form class="up-form-horizontal">
                        <div class="up-form-group">
                            <label class="up-col-sm-3 up-control-label zi" for="inputIntro">身体状况</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="text" id="physical"
                                value="${old.physical }">
                            </div>
                        </div>
                         </form>
                    <div class="up-col-sm-8 up-col-sm-offset-4">
                        <button type="button" class="up-btn up-btn-primary " 
                        onclick="javascript:checkMessage()" >注册</button>
                        <button type="reset" class="up-btn up-btn-danger" >重置</button>
                    </div>
            </div>
                    
    	</div>
  </div>
	<div class="footer">
        <div class="up-container">
            <p >© 2016 广东亿讯科技有限公司</p>
        </div>
    </div>
</body>
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<%@include file="/plugins/front/common/footer.jspf" %>
</html>
