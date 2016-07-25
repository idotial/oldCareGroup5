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
    <!-- 头部  strat-->
    <nav class="up-navbar up-navbar-default my-navbar" id="head">

        <div class="up-container-fluid">
            <div class="mylog">
                居家养老服务平台
            </div>
            <ul class="up-bottom-left up-nav up-navbar-nav my-left-ul">
                <li><a href="#">课程信息</a></li>
                <li><a href="#">教师信息</a></li>
                <li><a href="#">个人中心</a></li>
            </ul>
            <ul class="up-nav up-navbar-nav up-navbar-right my-right-ul">
                <li><a href="javascript:void(0)" id="userLogin">登录</a></li>
                <li><a href="#">注册</a></li>
            </ul>
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- 	头部 end -->

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
    </div>
    <!-- 	内容end -->

</div>
    <div class="login-bg">
        <div class="rl-modal in">
        </div>
        <div class='login-con'>
            <div class="up-col-xs-10 up-col-sm-10 up-col-xs-offset-1 up-col-sm-offset-1">
                <h3 class="up-text-center tmpl_mar30">用户登录</h3>
                <div class="up-input-group up-input-group-lg tmpl_mar30">
                    <span class="up-input-group-addon"><span class="up-icon up-icon-user"></span></span>
                    <input type="text" class="up-form-control" placeholder="用户名" aria-describedby="sizing-addon2">
                </div>
                <div class="up-input-group up-input-group-lg tmpl_mar20">
                    <span class="up-input-group-addon"><span class="up-icon up-icon-lock"></span></span>
                    <input type="text" class="up-form-control" placeholder="密码" aria-describedby="sizing-addon2">
                </div>
                <div class="tmpl_mar20">
                    <input class="up-btn up-btn-primary up-btn-lg up-btn-block" type="submit" value="登陆">
                </div>
                <div class="login_ex tmpl_mar20">
                    <a href="javascript:void(0);" class="up-pull-left">注册</a>
                    <a href="javascript:void(0);" class="up-row up-pull-right">忘记密码 <span class="up-badge">?</span></a>
                </div>

            </div>
        </div>
    </div>

</body>
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="${basePath}/resources/js/jquery.min.js"></script>
<script src="${basePath}/resources/js/uplan.min.js"></script>
<script src="${basePath}/resources/js/common.js"></script>
<script>
    $(function(){
        $('#userLogin').click(function() {
            $(".login-bg").css("display","block");
        });

    })
</script>
</html>
