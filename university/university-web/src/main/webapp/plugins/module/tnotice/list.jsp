<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@include file="/common/common.jsp"%>
<%@include file="/common/common-ui.jsp"%>
<%@include file="/common/common-head.jsp"%>
<body>
<div id="wrap">
<!-- content start -->
<%@include file="/plugins/main.jspf" %>
<main class="main up-container-fluid">
       <div class="up-row tmpl_mar20">
           <div class="up-col-xs-12 up-col-sm-12 up-col-md-12">
               <div class="up-row up-panel tmpl_panel tmpl_margin">
                   <div class="up-panel-heading">
                       <span>通知信息</span>
							<br>
							<div class="up-btn-group up-btn-group-xs">
								<button type="button" id="list_add" class="up-btn up-btn-default">
									<span class="up-icon-plus"></span> 新增
								</button>
								<button type="button" class="up-btn up-btn-default">
									<span class="up-icon-save"></span> 保存
								</button>
								<button type="button" id="list_modify"
									class="up-btn up-btn-default">
									<span class="up-icon-archive"></span> 修改
								</button>
								<button type="button" id="list_delete"
									class="up-btn up-btn-default">
									<span class="up-icon-trash-o"></span> 删除
								</button>
							</div>
                       <a href="javascript:void(0);" class="tmpl_panel_close"><span class="up-icon up-icon-remove" aria-hidden="true"></span></a>
                       <a href="javascript:void(0);" class="fullscreen_btn"><span class="up-icon up-icon-resize-full" aria-hidden="true"></span></a>
                       <a href="#tmpl_panel_con" class="collapse_btn" data-toggle="collapse"><span class="up-icon up-icon-chevron-down" aria-hidden="true"></span></a>

                       <div class="panel_head_page">
                           
                           <form class="up-navbar-form up-navbar-right up-hidden-xs" role="search">
                               <div class="up-form-group">
                                   <input type="text" name="nameSerach" class="up-input-sm up-form-control" value="${name}" placeholder="Search">
                               </div>
                               <button id="list_search" type="button" onclick="listSearch()" class="up-btn up-btn-primary up-btn-sm">搜索</button>
                           </form>
                       </div>
                   </div>
                   <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con">
                       <div class="up-table-responsive">
                          	<form class="up-form" method="post" name="list_form">
                            <table class="up-table up-table-striped up-table-hover tmpl_table">
                                <thead>
                                <input type="hidden" id="name" name="name" value=""/>
								<!-- 提交到后台的搜索条件，放name查询条件作为例子 -->
	                                   <tr>
											<th class="table-check"><input type="checkbox"
												onclick="checkAll(this)" /></th>
											<th >title</th>
											<th >content</th>
										</tr>
                                </thead>
                                <tbody>
				          <c:forEach items="${list}" var="rowdata" varStatus="status">
				            <tr >
                             <td><input type="checkbox" name="ids" value="${rowdata.noticeId}" /></td>
              				<td title="${rowdata.title}" > <a href="${basePath}${path}view/${rowdata.noticeId}" class="name">${rowdata.title}</a></td>
							<td >${rowdata.content}</td>
					          </tr>
					        </c:forEach>
				          </tbody>
							</table>
							<%@include file="/common/common-page-new.jsp"%>
							<hr />
                       	</form>
                       </div>
                   </div>
               </div>
           </div>
       </div>
  </main>
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
	//以name为模糊匹配的搜索例子
	//对应MyBatis xml是s_name like concat(
	$(function(){
	 	$("#list_search").click(function (){
	 		$("#list_pageNum").val("1");
	 		$("#name").val($("input[name='nameSerach']").val());
	 		$('form[name=list_form]').attr('action','list').submit();
	 	});
	});
</script>

</html>
