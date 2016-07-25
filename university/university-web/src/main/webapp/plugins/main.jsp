<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<div style="width: 300px">
			<ul>
				<a>管理员管理</a>
				<li><a href="${basePath }/module/tadmin/list">管理员列表</a></li>
				<li><a>管理员添加</a></li>
			</ul>
			<ul>
				<a href="${basePath }/module/tterm/list">学期管理</a>
				<li><a>学期列表</a></li>
				<li><a>学期添加</a></li>
			</ul>
			<ul>
				<a href="${basePath }/plugins/module/tcourse/modify.jsp">课程管理</a>
				<li><a>课程列表</a></li>
				<li><a>课程添加</a></li>
			</ul>
			<ul>
				<a href="${basePath }/plugins/module/tstaff/modify.jsp">教师管理</a>
				<li><a>教师列表</a></li>
				<li><a>教师添加</a></li>
			</ul>
			<ul>
				<a href="${basePath }/plugins/module/troom/modify.jsp">教室管理</a>
				<li><a>教室添加</a></li>
				<li><a>教室删除</a></li>
			</ul>
			<ul>
				<a href="${basePath }/plugins/module/tclass/modify.jsp">班级管理</a>
				<li><a>班级添加</a></li>
				<li><a>班级删除</a></li>
			</ul>
			<ul>
				<a href="${basePath }/plugins/module/ttime/modify.jsp">课表管理</a>
				<li><a>课表管理</a></li>
			</ul>
			<ul>
				<a href="${basePath }/plugins/module/treturn/modify.jsp">退课管理</a>
				<li><a>退课审批</a></li>
			</ul>
		</div>
		<div style="width: 500px;float: left;">aaa</div>
</body>
</html>