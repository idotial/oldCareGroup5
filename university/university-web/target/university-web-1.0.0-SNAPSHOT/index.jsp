<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<html>
<head>
<link rel="stylesheet" href="${basePath}/resources/css/uplan.min.css">
<link href="${basePath}/resources/css/style.css" rel="stylesheet">
</head>

<body>
	<div id="wrap">
		<div class="login">

			<!--<div class="login_left up-container up-hidden-xs">
                <div class="up-row">
                        <div class="up-col-xs-10 up-col-sm-10 up-col-x-offset-1 up-col-sm-offset-1">
                        <div class="up-text-center tmpl_mar30 login_left_head">
                            <img src="images/logo2.png" alt="">
                            <h4>易用 高性能 快捷 强大</h4>
                        </div>
                        <p class="tmpl_mar20"><span class="up-icon up-icon-file"></span>&emsp;Flexible modular structure</p>
                        <p class="tmpl_mar20"><span class="up-icon up-icon-align-left"></span>&emsp;LESS source files</p>
                        <p class="tmpl_mar20"><span class="up-icon up-icon-certificate"></span>&emsp;RTL direction support</p>
                        <p class="tmpl_mar20"><span class="up-icon up-icon-heart"></span>&emsp;Crafted with love</p>
                    </div>
                </div>
            </div>-->

			<form action="module/tadmin/adminLogin" method="post">
				<div class='login_con'>
					<div
						class="up-col-xs-10 up-col-sm-10 up-col-xs-offset-1 up-col-sm-offset-1">
						<h3 class="up-text-center tmpl_mar30">管理员登录</h3>
						<div class="up-input-group up-input-group-lg tmpl_mar30">
							<span class="up-input-group-addon"><span
								class="up-icon up-icon-user"></span></span> <input type="text"
								class="up-form-control" id="username" name="username" placeholder="用户名"
								aria-describedby="sizing-addon2" value="${cookie.username.value }">
						</div>
						<div class="up-input-group up-input-group-lg tmpl_mar20">
							<span class="up-input-group-addon"><span
								class="up-icon up-icon-lock"></span></span> <input type="password"
								class="up-form-control" name="password" value="${cookie.password.value }" placeholder="密码"
								aria-describedby="sizing-addon2">
						</div>
						<div class="tmpl_mar20">
							<input class="up-btn up-btn-primary up-btn-lg up-btn-block"
								type="submit" value="登陆">
						</div>
						<div class="login_ex tmpl_mar20">
							<label for="" class="up-pull-left"><input type="checkbox"
								value="1" name="rmb">记住账号</label> <a href="javascript:void(0);"
								class="up-row up-pull-right">忘记密码 <span class="up-badge">?</span>
							</a>
						</div>
					</div>
					<div class="login_code_btn">
						<img src="${basePath }/resources/images/erwei.png" class="fullimg"
							alt="">
					</div>
					<div class="login_code up-text-center">
						<img class="tmpl_mar30"
							src="${basePath }/resources/images/login_code.png" alt="">
						<div
							class="tmpl_mar30 up-col-xs-10 up-col-sm-10  up-col-xs-offset-1 up-col-sm-offset-1">
							<input class="up-btn up-btn-primary up-btn-lg up-btn-block"
								type="button" value="返回">
						</div>
					</div>
				</div>
			</form>
		</div>

		<ul class="login_bg">
			<li><img src="${basePath }/resources/images/ba1.jpg" alt=""></li>
			<li><img src="${basePath }/resources/images/bg2.jpg" alt=""></li>
			<li><img src="${basePath }/resources/images/bg1.jpg" alt=""></li>
			<li><img src="${basePath }/resources/images/ba1.jpg" alt=""></li>
		</ul>
		<!--<div class="login_bg_btn">
            <p>背景图片</p>
            <ul>
                <li><img src="images/ba1.jpg" class="fullimg" alt=""></li>
                <li><img src="images/bg2.jpg" class="fullimg" alt=""></li>
                <li><img src="images/bg1.jpg" class="fullimg" alt=""></li>
                <li><img src="images/bg1.jpg" class="fullimg" alt=""></li>
            </ul>
        </div>-->
	</div>
</body>
<!--[if lt IE 9]>
  <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="${basePath}/resources/js/jquery.min.js"></script>
<script src="${basePath}/resources/js/uplan.min.js"></script>
<script src="${basePath}/resources/js/common.js"></script>
<script type="text/javascript">
	$("#username").bind("blur",function(){
		$.ajax({
			url:"module/tadmin/checkUsername",
			dataType:"json",
			async:true,
			data:{"username":$("#username").val()},
			type:"POST",
			success:function(data){
				console.log(data.result);
			}
		});
	});
</script>

</html>