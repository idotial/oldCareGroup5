<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TClass</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TClass</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}modify" method="post" class="jqtransform">
	              	              <input type="hidden" id="classId" name="classId" value="${model.classId}"/>
	              <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}"/>
	               <table class="form_table"  width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															<td class="form_label">课程ID:</td>	
										<td class="form_value">
													${model.courseId}
											</td>
															<td class="form_label">学期ID:</td>	
										<td class="form_value2">
													${model.termId}
											</td>
				</tr>
															<td class="form_label">教师ID:</td>	
										<td class="form_value">
													${model.staffId}
											</td>
															<td class="form_label">教室ID:</td>	
										<td class="form_value2">
													${model.rooma}
											</td>
				</tr>
															<td class="form_label">totalNum:</td>	
										<td class="form_value">
													${model.totalNum}
											</td>
															<td class="form_label">enteredNum:</td>	
										<td class="form_value2">
													${model.enteredNum}
											</td>
				</tr>
															<td class="form_label">state:</td>	
										<td class="form_value">
													${model.state}
											</td>
															<td class="form_label">timea:</td>	
										<td class="form_value2">
													${model.timea}
											</td>
				</tr>
															<td class="form_label">timeb:</td>	
										<td class="form_value">
													${model.timeb}
											</td>
															<td class="form_label">roomb:</td>	
										<td class="form_value2">
													${model.roomb}
											</td>
				</tr>
															<td class="form_label">班级名:</td>	
										<td class="form_value">
													${model.cname}
											</td>
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