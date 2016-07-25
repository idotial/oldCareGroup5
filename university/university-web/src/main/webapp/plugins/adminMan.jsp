<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <%@include file="/common/common.jsp"%>
    <title>居家养老管理平台</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="${basePath}/resources/css/uplan.min.css">
    <link href="${basePath}/resources/css/style.css" rel="stylesheet">
</head>

<body>
<div id="wrap">
    <!-- 头部  strat-->
    <nav class="up-navbar up-navbar-default" id="head">
        <div class="up-container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="up-navbar-header">
                <button type="button" class="up-navbar-toggle up-collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="up-sr-only">Toggle navigation</span>
                    <span class="up-icon-bar"></span>
                    <span class="up-icon-bar"></span>
                    <span class="up-icon-bar"></span>
                </button>
                <div class="nav_head">
                    <div class="logo">
                        <a class="" href="javascript:void(0);">
                            <span>居家养老管理平台</span>
                        </a>
                    </div>
                    <div class="home">
                        <a href="">
                            <span class="up-icon up-icon-home"></span>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="up-collapse up-navbar-collapse" id="bs-example-navbar-collapse-1">
                <div class="sidebtn up-navbar-nav up-navbar-left up-hidden-xs">
                    <a href="javascript:void(0);">
                        <span class="up-icon up-icon-menu-hamburger"></span>
                    </a>
                </div>

                <ul class="up-nav up-navbar-nav up-navbar-right">
                    <li>
                        <a href="javascript:void(0);">
                            <span class="up-icon up-icon-bell"></span>
                            <span class="up-badge">0</span>
                        </a>
                    </li>
                    <li class="up-dropdown">
                        <a href="javascript:void(0);" class="up-dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            ${admin.username }
                            <span class="up-caret"></span>
                        </a>
                        <ul class="up-dropdown-menu" role="menu">
                            <li>
                                <a href="javascript:void(0);">修改密码</a>
                            </li>
                            <li class="up-divider"></li>
                            <li>
                                <a href="javascript:void(0);">更换账号</a>
                            </li>
                            <li class="up-divider"></li>
                            <li>
                                <a href="javascript:void(0);">注销</a>
                            </li>
                        </ul>
                    </li>
                </ul>

                <form class="up-navbar-form up-navbar-right" role="search">
                    <div class="up-form-group">
                        <input type="text" class="up-form-control" placeholder="Search"></div>
                    <button type="submit" class="up-btn up-btn-primary up-btn-sm">搜索</button>
                </form>
            </div>
            <!-- /.navbar-collapse --> </div>
        <!-- /.container-fluid --> </nav>
    <!-- 	头部 end -->
    <!-- 侧栏start -->
    <div class="sidebar">
        <nav class="sidenav">
            <header id="collapsePerson" class="up-collapse up-in">
                <img src="${basePath}/resources/images/touxiang.png" width="120" height="120" class="up-img-circle" alt="">
                <h4>${admin.username }</h4>
                <h6>管理员</h6>
            </header>
            <ul class="nav_ul" id="accordion">

                <li class="active">
                    <a href="${basePath }/plugins/module/tclass/list.jsp"><span class='up-icon up-icon-home'></span>课程信息</a>
                </li>
                <li>
                    <a href="addCourses.html"><span class='up-icon up-icon-file'></span>新增课程</a>
                </li>
                <li>
                    <a href="${basePath }/plugins/module/treturn/list.jsp"><span class='up-icon up-icon-th-list'></span>审批</a>
                </li>
                <li>
                    <a href="user.html"><span class='up-icon up-icon-th-list'></span>用户信息</a>
                </li>
                <li>
                    <a href="adminMan.html"><span class='up-icon up-icon-th-list'></span>管理员管理</a>
                </li>
                <li>
                    <a href="person.html"><span class='up-icon up-icon-cog'></span>个人中心</a>
                </li>
                <li>
                    <a href="login.html"><span class='up-icon up-icon-log-out'></span>注销</a>
                </li>
            </ul>
        </nav>
    </div>
    <!-- 侧栏end -->
    <!-- 内容start -->
	   <main class="main up-container-fluid">
            <div class="up-row tmpl_mar20">
                <div class="up-col-xs-12 up-col-sm-12 up-col-md-12">
                    <div class="up-row up-panel tmpl_panel tmpl_margin">
                        <div class="up-panel-heading">
                            <span>添加管理员信息</span>

                            <a href="javascript:void(0);" class="tmpl_panel_close"><span class="up-icon up-icon-remove" aria-hidden="true"></span></a>
                            <a href="javascript:void(0);" class="fullscreen_btn"><span class="up-icon up-icon-resize-full" aria-hidden="true"></span></a>
                            <a href="#tmpl_panel_con3" class="collapse_btn" data-toggle="collapse"><span class="up-icon up-icon-chevron-down" aria-hidden="true"></span></a>
                        </div>
                        <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con3">
                        	<form class="up-form-horizontal jqtransform" action="${basePath}/module/tadmin/addAdmin" method="post" name="form_item">
                                <c:if test="${!empty model}">
										<input type="hidden" id="aid" name="aid" value="${model.aid}" />
									</c:if>
		
									<c:if test="${!empty page}">
										<input type="hidden" id="pageNum" name="pageNum"
											value="${page.pageNum}" />
									</c:if>
                                <div class="up-form-group">
                                   
                                    <label for="select1" class="up-col-sm-5 up-control-label">账号</label>
                                    <div class="up-col-sm-6">
                                       <input id="username" name="username"
										type="text" class="input-text lh30" value="${model.username}" />
                                    </div>
                                </div>
                        		<div class="up-form-group ">
                        			<label  class="up-col-sm-5 up-control-label">密码</label>
                        			<div class="up-col-sm-6">
                        				<input id="password" name="password"
										type="text" class="input-text lh30" value="${model.password}" />
                    				</div>

                        		</div>


                        		<div class="up-form-group ">
                        			<div class="up-col-sm-12 up-text-center">
                        				<input type="submit" name="button"
										class="up-btn up-btn-primary" id="modle_save" value="保存"> 
										<input type="reset" name="button" class="up-btn up-btn-danger up-col-xs-offset-1 up-col-sm-offset-1 up-col-md-offset-1s" value="重置">
                        			</div>

                        		</div>
                        	</form>
                        </div>
                    </div>
                </div>
        </main>
   
    <!-- 	内容end -->
</div>
</body>
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="${basePath}/resources/js/jquery.min.js"></script>
<script src="${basePath}/resources/js/uplan.min.js"></script>
<script src="${basePath}/resources/js/common.js"></script>

</html>
