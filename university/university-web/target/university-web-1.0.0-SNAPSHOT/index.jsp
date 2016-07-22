<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp" %>
<html>
<head>
<title>home</title>
</head>
<body>

<c:if test="${err == 1 }">
	<script type="text/javascript">alert("用户名或密码错误！");</script>
</c:if>
	<div>老年大学</div>
	<form action="module/tadmin/adminLogin" method="post">
		用户名：<input type="text" name="username"/>
		<br>
		密&nbsp;码：<input type="password" name="passwords"/>
		<input type="submit" value="登陆"/>
	</form>
</body>
</html>