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
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="classId" name="classId" value="${model.classId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">课程ID</td>
					 					 <td class=""><input id="courseId" name="courseId"  type="text" class="input-text lh30" 
					 						 		value="${model.courseId}" />	
					 						</td>
					
															 <td class="td_right">学期ID</td>
					 					 <td class=""><input id="termId" name="termId"  type="text" class="input-text lh30" 
					 						 		value="${model.termId}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">教师ID</td>
					 					 <td class=""><input id="staffId" name="staffId"  type="text" class="input-text lh30" 
					 						 		value="${model.staffId}" />	
					 						</td>
					
															 <td class="td_right">教室ID</td>
					 					 <td class=""><input id="rooma" name="rooma"  type="text" class="input-text lh30" 
					 						 		value="${model.rooma}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">totalNum</td>
					 					 <td class=""><input id="totalNum" name="totalNum"  type="text" class="input-text lh30" 
					 						 		value="${model.totalNum}" />	
					 						</td>
					
															 <td class="td_right">enteredNum</td>
					 					 <td class=""><input id="enteredNum" name="enteredNum"  type="text" class="input-text lh30" 
					 						 		value="${model.enteredNum}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">state</td>
					 					 <td class=""><input id="state" name="state"  type="text" class="input-text lh30" 
					 						 		value="${model.state}" />	
					 						</td>
					
															 <td class="td_right">timea</td>
					 					 <td class=""><input id="timea" name="timea"  type="text" class="input-text lh30" 
					 						 		value="${model.timea}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">timeb</td>
					 					 <td class=""><input id="timeb" name="timeb"  type="text" class="input-text lh30" 
					 						 		value="${model.timeb}" />	
					 						</td>
					
															 <td class="td_right">roomb</td>
					 					 <td class=""><input id="roomb" name="roomb"  type="text" class="input-text lh30" 
					 						 		value="${model.roomb}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">班级名</td>
					 					 <td class=""><input id="cname" name="cname"  type="text" class="input-text lh30" 
					 						 		value="${model.cname}" />	
					 						</td>
					
																		</tr>
					                 <tr>
	                   <td class="td_right">&nbsp;</td>
	                   <td class="">
	                     <input type="button" name="button" class="btn" id="modle_save" value="保存"> 
	                    <input type="button" name="button" class="btn" value="重置"> 
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