<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TCourse</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TCourse</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}modify" method="post" class="jqtransform">
	              	              <input type="hidden" id="courseId" name="courseId" value="${model.courseId}"/>
	              <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}"/>
	               <table class="form_table"  width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															<td class="form_label">课程名:</td>	
										<td class="form_value">
													${model.courseName}
											</td>
															<td class="form_label">课程费用:</td>	
										<td class="form_value2">
													${model.courseCost}
											</td>
				</tr>
															<td class="form_label">课程介绍:</td>	
										<td class="form_value">
													${model.introduction}
											</td>
															<td class="form_label">状态:</td>	
										<td class="form_value2">
													${model.state}
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