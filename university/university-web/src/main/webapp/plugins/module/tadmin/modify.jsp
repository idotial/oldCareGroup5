<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <title>居家养老管理平台</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="${basePath}/resources/css/uplan.min.css">
    <link href="${basePath}/resources/css/style.css" rel="stylesheet">
</head>

<body>
<div id="wrap">
 <!-- 头部  侧栏-->
 
    <%@include file="/plugins/main.jspf" %>
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
                        	<form class="up-form-horizontal jqtransform" onsubmit="return check()" action="${basePath}${path}${action}" method="post" name="form_item">
                                <c:if test="${!empty model}">
										<input type="hidden" id="aid" name="aid" value="${model.aid}" />
									</c:if>
		
									<c:if test="${!empty page}">
										<input type="hidden" id="pageNum" name="pageNum"
											value="${page.pageNum}" />
									</c:if>
                                <div class="up-form-group">
                                   
                                    <label for="select1" class="up-col-sm-3 up-control-label">账号</label>
                                    <div class="up-col-sm-6">
                                       <input id="username" name="username"
										type="text" class="input-text lh30" value="${model.username}" />
                                    </div>
                                </div>
                        		<div class="up-form-group ">
                        			<label  class="up-col-sm-3 up-control-label">密码</label>
                        			<div class="up-col-sm-6">
                        				<input id="pwd" name="pwd"
										type="password" class="input-text lh30" value="${model.password}"/>
										<input id="password" name="password"
										type="hidden" class="input-text lh30" value="${model.password}"/>
                    				</div>
									<input id="createTime" name="createTime" type="hidden">
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

<script src="${basePath}/resources/js/jquery.min.js"></script>
<script src="${basePath}/resources/js/uplan.min.js"></script>
<script src="${basePath}/resources/js/common.js"></script>
<script type="text/javascript">
	function check(){
		var v = $("#password").val();
		if(v == ''){
			$("#password").val($("#pwd").val());
			var dat = new Date().toLocaleDateString();
			dat = dat.replace("/", "-");
			dat = dat.replace("/", "-");
			$("#createTime").val(dat);
			return true;
		}else{
			if(window.confirm("确定修改密码？")){
				$("#password").val($("#pwd").val());
				return true;
			}else{
				return false;
			}
		}
	}
</script>
</html>





