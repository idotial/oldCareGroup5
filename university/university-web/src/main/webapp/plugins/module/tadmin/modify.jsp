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
						<form action="${basePath}/module/tadmin/addAdmin" method="post"
							class="jqtransform" name="form_item">
							<c:if test="${!empty model}">
								<input type="hidden" id="aid" name="aid" value="${model.aid}" />
							</c:if>

							<c:if test="${!empty page}">
								<input type="hidden" id="pageNum" name="pageNum"
									value="${page.pageNum}" />
							</c:if>
							<table class="form_table pt15 pb15" width="100%" border="0"
								cellpadding="0" cellspacing="0">
								<tr>
									<td class="td_right">账号</td>
									<td class=""><input id="username" name="username"
										type="text" class="input-text lh30" value="${model.username}" />
									</td>

									<td class="td_right">密码</td>
									<td class=""><input id="password" name="password"
										type="text" class="input-text lh30" value="${model.password}" />
									</td>

								</tr>
								<tr>
									<td class="td_right">&nbsp;</td>
									<td class=""><input type="submit" name="button"
										class="btn" id="modle_save" value="保存"> <input
										type="reset" name="button" class="btn" value="重置"></td>
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