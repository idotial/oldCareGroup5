<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <title>Examples</title>
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
                    <a href="checkUsername"><span class='up-icon up-icon-home'></span>课程信息</a>
                </li>
                <li>
                    <a href="addCourses.html"><span class='up-icon up-icon-file'></span>新增课程</a>
                </li>
                <li>
                    <a href="examine.html"><span class='up-icon up-icon-th-list'></span>审批</a>
                </li>
                <li>
                    <a href="user.html"><span class='up-icon up-icon-th-list'></span>用户信息</a>
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
                        <span>课程信息</span>

                        <a href="javascript:void(0);" class="tmpl_panel_close"><span class="up-icon up-icon-remove" aria-hidden="true"></span></a>
                        <a href="javascript:void(0);" class="fullscreen_btn"><span class="up-icon up-icon-resize-full" aria-hidden="true"></span></a>
                        <a href="#tmpl_panel_con" class="collapse_btn" data-toggle="collapse"><span class="up-icon up-icon-chevron-down" aria-hidden="true"></span></a>

                        <div class="panel_head_page">
                            <span class=" up-hidden-xs up-hidden-sm">Per page</span>
                            <div class="up-btn-group  up-hidden-xs up-hidden-sm">
                                <button type="button" class="up-btn up-dropdown-toggle up-btn-sm" data-toggle="dropdown" aria-expanded="false">
                                    10 <span class="up-caret"></span>
                                </button>
                                <ul class="up-dropdown-menu" role="menu">
                                    <li><a href="javascript:void(0);">1</a></li>
                                    <li class="up-divider"></li>
                                    <li><a href="javascript:void(0);">3</a></li>
                                    <li class="up-divider"></li>
                                    <li><a href="javascript:void(0);">5</a></li>
                                    <li class="up-divider"></li>
                                    <li><a href="javascript:void(0);">10</a></li>
                                </ul>
                            </div>
                            <form class="up-navbar-form up-navbar-right up-hidden-xs" role="search">
                                <div class="up-form-group">
                                    <input type="text" class="up-input-sm up-form-control" placeholder="Search">
                                </div>
                                <button type="submit" class="up-btn up-btn-primary up-btn-sm">搜索</button>
                            </form>
                        </div>
                    </div>
                    <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con">
                        <div class="up-table-responsive">
                            <table class="up-table up-table-striped up-table-hover tmpl_table">
                                <thead>
                                <tr>
                                    <th><input type="checkbox"></th>
                                    <th>序号</th>
                                    <th>课程类别</th>
                                    <th>名称</th>
                                    <th>时间</th>
                                    <th>地点</th>
                                    <th>教师</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>10:00-12:00</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="编辑"><span class="up-icon up-icon-pencil"></span></a>
                                        &emsp;	&emsp;
                                        <a href="javascript:void(0);" title="删除"><span class="up-icon up-icon-trash"></span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>10:00-12:00</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="编辑"><span class="up-icon up-icon-pencil"></span></a>
                                        &emsp;	&emsp;
                                        <a href="javascript:void(0);" title="删除"><span class="up-icon up-icon-trash"></span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>10:00-12:00</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="编辑"><span class="up-icon up-icon-pencil"></span></a>
                                        &emsp;	&emsp;
                                        <a href="javascript:void(0);" title="删除"><span class="up-icon up-icon-trash"></span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>10:00-12:00</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="编辑"><span class="up-icon up-icon-pencil"></span></a>
                                        &emsp;	&emsp;
                                        <a href="javascript:void(0);" title="删除"><span class="up-icon up-icon-trash"></span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>10:00-12:00</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="编辑"><span class="up-icon up-icon-pencil"></span></a>
                                        &emsp;	&emsp;
                                        <a href="javascript:void(0);" title="删除"><span class="up-icon up-icon-trash"></span></a>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="table_foot">
                            <span>共15条记录</span>
                            <ul class="up-pagination up-pagination-sm up-pull-right">
                                <li><a href="javascript:void(0);">&laquo;</a></li>
                                <li><a href="javascript:void(0);">1</a></li>
                                <li class="up-active"><a href="javascript:void(0);">2</a></li>
                                <li><a href="javascript:void(0);">3</a></li>
                                <li><a href="javascript:void(0);">4</a></li>
                                <li><a href="javascript:void(0);">5</a></li>
                                <li><a href="javascript:void(0);">&raquo;</a></li>
                            </ul>
                            <span class="up-pull-right">page 2 of 12</span>
                        </div>
                    </div>
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
