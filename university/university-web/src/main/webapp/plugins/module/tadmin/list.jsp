<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp"%>
<%@include file="/common/common-ui.jsp"%>
<!-- content start -->
<div class="admin-content">
	<div class="up-cf up-padding">
		<div class="up-fl up-cf">
			<strong class="up-text-primary up-text-lg">TAdmin</strong> / <small>TAdmin</small>
		</div>
	</div>

	<div class="up-g">
		<div class="up-u-md-6 up-cf">
			<div class="up-fl up-cf">
				<div class="up-btn-toolbar up-fl">
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

				</div>
			</div>
		</div>
		<div class="up-u-md-3 up-cf">
			<div class="up-fr">
				<div class="up-input-group up-input-group-sm">
					<input name="nameSerach" type="text"
						class="input-medium search-query" value="${name}">
					<button id="list_search" type="button" class="btn"
						onclick="listSearch()">搜索</button>
					<!-- 以name为搜索条件的例子 -->
				</div>
			</div>
		</div>
	</div>



	<div class="up-g">
		<div class="up-u-sm-12">
			<form class="up-form" method="post" name="list_form">
				<!-- <table class="up-table up-table-striped up-table-hover table-main"> -->
				<table class="table">
					<thead>
						<input type="hidden" id="name" name="name" value="" />
						<!-- 提交到后台的搜索条件，放name查询条件作为例子 -->
						<tr>
							<th class="table-check"><input type="checkbox"
								onclick="checkAll(this)" /></th>
							<th>账号</th>
							<th>密码</th>
							<th>创建时间</th>
							<th>更改时间</th>
							<th>权限</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="rowdata" varStatus="status">
							<tr>
								<td><input type="checkbox" name="ids"
									value="${rowdata.aid}" /></td>
								<td title="${rowdata.username}"><a
									href="${basePath}${path}view/${rowdata.aid}" class="name">${rowdata.username}</a></td>

								<td>${rowdata.password}</td>

								<td><fmt:formatDate value="${rowdata.createTime}"
										type="both" pattern="yyyy-MM-dd" /></td>

								<td><fmt:formatDate value="${rowdata.changeTime}"
										type="both" pattern="yyyy-MM-dd" /></td>

								<td>${rowdata.power}</td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<%@include file="/common/common-page-new.jsp"%>
				<hr />
				<p>注：.....</p>
			</form>
		</div>

	</div>

	<!-- content end -->
</div>
<script type="text/javascript">
	//以name为模糊匹配的搜索例子
	//对应MyBatis xml是s_name like concat(
	$(function() {
		$("#list_search").click(function() {
			$("#list_pageNum").val("1");
			$("#name").val($("input[name='nameSerach']").val());
			$('form[name=list_form]').attr('action', 'list').submit();
		});
	});
</script>
