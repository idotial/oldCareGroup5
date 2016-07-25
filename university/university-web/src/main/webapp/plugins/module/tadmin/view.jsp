<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
<title>TAdmin</title>
</head>
<body>
	<div class="container">

		<div id="forms" class="mt0">
			<div class="box">
				<div class="box_border">
					<div class="box_top">
						<b class="pl15">TAdmin</b>
					</div>
					<div class="box_center">
						<form action="${basePath}${path}modify" method="post"
							class="jqtransform">
							<input type="hidden" id="aid" name="aid" value="${model.aid}" />
							<input type="hidden" id="pageNum" name="pageNum"
								value="${pageNum}" />
							<table class="form_table" width="100%" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td class="form_label">zhanghao:</td>
									<td class="form_value">${model.username}</td>
									<td class="form_label">密码:</td>
									<td class="form_value2">${model.password}</td>
								</tr>
								<td class="form_label">创建时间:</td>
								<td class="form_value"><fmt:formatDate
										value="${model.createTime}" type="both" pattern="yyyy-MM-dd" />
								</td>
								<td class="form_label">更改时间:</td>
								<td class="form_value2"><fmt:formatDate
										value="${model.changeTime}" type="both" pattern="yyyy-MM-dd" />
								</td>
								</tr>
								<td class="form_label">power:</td>
								<td class="form_value">${model.power}</td>
								</tr>
								<tr>
									<td class="td_right">&nbsp;</td>
									<td class="">
										<!-- <input type="button" name="button" class="btn" id="modle_close" value="返回"> -->
									</td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>