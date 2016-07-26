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
                            <span>添加课程信息</span>

                            <a href="javascript:void(0);" class="tmpl_panel_close"><span class="up-icon up-icon-remove" aria-hidden="true"></span></a>
                            <a href="javascript:void(0);" class="fullscreen_btn"><span class="up-icon up-icon-resize-full" aria-hidden="true"></span></a>
                            <a href="#tmpl_panel_con3" class="collapse_btn" data-toggle="collapse"><span class="up-icon up-icon-chevron-down" aria-hidden="true"></span></a>
                        </div>
                        <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con3">
						<form action="${basePath}${path}${action}" method="post"
							class="jqtransform" name="form_item">
							<c:if test="${!empty model}">
								<input type="hidden" id="classId" name="classId"
									value="${model.classId}" />
							</c:if>

							<c:if test="${!empty page}">
								<input type="hidden" id="pageNum" name="pageNum"
									value="${page.pageNum}" />
							</c:if>
							<table class="form_table pt15 pb15" width="100%" border="0"
								cellpadding="0" cellspacing="0">
								<tr>
								<td class="td_right">班级名</td>
								<td class=""><input id="cname" name="cname" type="text"
									class="input-text lh30" onblur="getCourse()" value="${model.cname}" placeholder="输入班级名后获取信息"/></td>

								</tr>
									<td class="td_right">课程</td>
									<td class=""><select id="courseId" name="courseId"
										 class="input-text lh30">
										 <option value="0">--------请选择-------</option>
									</select></td>

									<td class="td_right">学期信息</td>
									<td class=""><select id="termId" name="termId"
										class="input-text lh30" value="${model.termId}" >
										<option value="0">--------请选择-------</option>
										</select></td>

								</tr>
								<td class="td_right">教师名</td>
								<td class=""><select id="staffId" name="staffId"
									class="input-text lh30" value="${model.staffId}" >
									<option value="0">--------请选择-------</option>
									</select></td>
								
								<td class="td_right">班级状态</td>
								<td class=""><select id="state" name="state" type="text"
									class="input-text lh30">
										<option value="报名中">报名中</option>
										<option value="已开课">已开课</option>
										<option value="已结课">已结课</option>
									</select></td>
								

								</tr>
								<td class="td_right">班级总人数</td>
								<td class=""><input id="totalNum" name="totalNum"
									type="text" class="input-text lh30" value="25" />
								</td>

								<td class="td_right">现有人数</td>
								<td class=""><input id="enteredNum" name="enteredNum"
									type="text" class="input-text lh30" value="0" />
								</td>

								</tr>
								

								<td class="td_right">上课时间1</td>
								<td class=""><select id="timea" name="timea"
									class="input-text lh30" value="${model.timea}" onchange="searchRoom()">
									<option value="0">--------请选择-------</option>
									</select></td>
								
								<td class="td_right">上课地点1</td>
								<td class=""><select id="rooma" name="rooma"
									class="input-text lh30" value="${model.rooma}" >
									<option value="0">--------请选择-------</option>
									</select></td>
								
								</tr>
								<td class="td_right">上课时间2</td>
								<td class=""><select id="timeb" name="timeb"
									class="input-text lh30" value="${model.timeb}" onchange="searchRoom1()">
									<option value="0">--------请选择-------</option>
									</select></td>

								<td class="td_right">上课地点2</td>
								<td class=""><select id="roomb" name="roomb"
									class="input-text lh30" value="${model.roomb}">
									<option value="0">--------请选择-------</option>
									</select></td>

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
        </main>
   
    <!-- 	内容end -->
</div>
</body>

<script src="${basePath}/resources/js/jquery.min.js"></script>
<script src="${basePath}/resources/js/uplan.min.js"></script>
<script src="${basePath}/resources/js/common.js"></script>
<script type="text/javascript">
	function getCourse(){
	 //添加课程信息
		$.ajax({
			url:"${basePath}/module/tcourse/getCourse",
			dataType:"json",
			async:true,
			type:"POST",
			success:function(data){
				$("#courseId").html("");
				$("#courseId").append('<option value="0">--------请选择-------</option>');
				 for (var i = 0; i <= data.length - 1; i++) {  
					 $("#courseId").append('<option value="' + data[i].courseId + '">' + data[i].courseName + '</option>'); 
				};
			}
		});
		
	//添加学期信息
		$.ajax({
			url:"${basePath}/module/tterm/getLastTerm",
			dataType:"json",
			async:true,
			type:"POST",
			success:function(aaa){
				$("#termId").html("");
				 $("#termId").append('<option value="0">--------请选择-------</option>');
				 for (var i = 0; i <= aaa.length - 1; i++) {  
					 $("#termId").append('<option value="' + aaa[i].termId + '">' + aaa[i].termName+'</option>'); 
				};
			}
		});
	
	//添加教师信息
	$.ajax({
			url:"${basePath}/module/tstaff/getTeachar",
			dataType:"json",
			async:true,
			type:"POST",
			success:function(staff){
				$("#staffId").html("");
				 $("#staffId").append('<option value="0">--------请选择-------</option>');
				 for (var i = 0; i <= staff.length - 1; i++) {  
					 $("#staffId").append('<option value="' + staff[i].staffId + '">' + staff[i].staffName+'</option>'); 
				};
			}
		});
	
//添加上课时间1
 	$.ajax({
		url:"${basePath}/module/ttime/initTime",
		dataType:"json",
		async:true,
		type:"POST",
		success:function(timea){
			$("#timea").html("");
			$("#timeb").html("");
			 $("#timea").append('<option value="0">--------请选择-------</option>');
			 $("#timeb").append('<option value="0">--------请选择-------</option>');
			 for (var i = 0; i <= timea.length - 1; i++) {  
				 $("#timea").append('<option value="' + timea[i].timeId + '">' + timea[i].info+":"+timea[i].startTime+"~"+timea[i].endTime+'</option>'); 
				 $("#timeb").append('<option value="' + timea[i].timeId + '">' + timea[i].info+":"+timea[i].startTime+"~"+timea[i].endTime+'</option>'); 
			};
		}
	}); 
	}
	
	function searchRoom(){

		var val1 = $("#timea").val();
		$("#timeb option[value = "+val1+"]").remove();
		//加载当前时间空余的教室信息
		$.ajax({
			url:"${basePath}/module/troom/getFreeRoom",
			dataType:"json",
			async:true,
			type:"POST",
			data:{"timeid":val1},
			success:function(rooma){
				$("#rooma").html("");
				 $("#rooma").append('<option value="0">--------请选择-------</option>');
				 for (var i = 0; i <= rooma.length - 1; i++) {  
					 $("#rooma").append('<option value="' + rooma[i].roomId + '">' + rooma[i].position+'</option>'); 
				};
			}
		}); 	
	}
	
	function searchRoom1(){
		var val2 = $("#timeb").val();
		$("#timea option[value = "+val2+"]").remove();
		//加载当前时间空余的教室信息
		$.ajax({
			url:"${basePath}/module/troom/getFreeRoom",
			dataType:"json",
			async:true,
			type:"POST",
			data:{"timeid":val2},
			success:function(roomb){
				$("#roomb").html("");
				 $("#roomb").append('<option value="0">--------请选择-------</option>');
				 for (var i = 0; i <= roomb.length - 1; i++) {  
					 $("#roomb").append('<option value="' + roomb[i].roomId + '">' + roomb[i].position+'</option>'); 
				};
			}
		});
	}
</script>
</html>