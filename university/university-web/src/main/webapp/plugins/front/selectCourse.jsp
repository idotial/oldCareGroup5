<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>居家养老服务平台</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
        <link rel="stylesheet" href="${basePath}/resources/css/uplan.min.css">
        <link href="${basePath}/resources/css/style.css" rel="stylesheet">
    <link href="${basePath}/plugins/front/css/myStyle.css" rel="stylesheet">
</head>


<body>
<div id="wrap">
    <!-- 头部start -->
    <%@include file="/plugins/front/common/header.jspf" %>

    <!-- 侧栏start -->
    <div class="sidebar">
        <nav class="sidenav">

            <ul class="nav_ul" id="accordion">
                <li>
                    <a href="selectCourse.jsp"><span class='up-icon up-icon-file'></span>选课</a>
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
                                    <th>班级名</th>
                                    <th>教师</th>
                                    <th>教室</th>
                                    <th>时间</th>
                                    <th>费用</th>
                                    <th>总人数</th>
                                    <th>已报名人数</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>书法入门</td>
                                    <td>是打发</td>
                                    <td>是打发</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="选课"><span class="up-icon up-icon-pencil"></span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td>12</td>
                                    <td>书法</td>
                                    <td>书法入门</td>
                                    <td>书法入门</td>
                                    <td>是打发</td>
                                    <td>是打发</td>
                                    <td>广州广州</td>
                                    <td>某某</td>
                                    <td>
                                        <a href="javascript:void(0);" title="选课"><span class="up-icon up-icon-pencil"></span></a>
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
    <div class="login-bg">
        <div class="rl-modal">
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
                    <a href="javascript:void(0);" class="up-pull-left userReg">注册</a>
                    <a href="javascript:void(0);" class="up-row up-pull-right">忘记密码 <span class="up-badge">?</span></a>
                </div>

            </div>
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
                                <input type="text" class="up-form-control my-form-control" id="inputName">
                            </div>
                        </div>
                    </form>
                    <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label for="inputName" class="up-col-sm-3 up-control-label zi">性别</label>
                            <div class="up-col-sm-6">
                                <select id="select1" class="up-form-control my-form-control" >
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
                                <input class="up-form-control my-form-control" type="password" id="password">
                            </div>
                        </div>
                    </form>
                    <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi">确认密码</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control"  type="password"  id="repassword" >
                            </div>
                        </div>
                    </form>
                   <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi" for="inputPhone">联系方式</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="email" id="inputPhone">
                            </div>
                        </div>
                    </form>
                    <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi">子女联系方式</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="text">
                            </div>
                        </div>
                    </form>
                    <form class="up-form-horizontal">
                        <div class="up-form-group up-form-group-lg">
                            <label class="up-col-sm-3 up-control-label zi" >年龄</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="text">
                            </div>
                        </div>
                    </form>
                    <form class="up-form-horizontal">
                        <div class="up-form-group">
                            <label class="up-col-sm-3 up-control-label zi" >身体状况</label>
                            <div class="up-col-sm-6">
                                <input class="up-form-control my-form-control" type="text">
                            </div>
                        </div>
                    </form>
                    <div class="up-col-sm-8 up-col-sm-offset-4">
                        <button type="button" class="up-btn up-btn-primary " onclick="javascript:checkMessage()">注册</button>
                        <button type="reset" class="up-btn up-btn-danger" >重置</button>
                    </div>
            </div>
    </div>

</body>
<!--[if lt IE 9]>
<script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<%@include file="/plugins/front/common/footer.jspf" %>
</html>
