<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TTime</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TTime</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="timeId" name="timeId" value="${model.timeId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">startTime</td>
					 					 <td class=""><input id="startTime" name="startTime"  type="text" class="input-text lh30" 
					 						 		value="${model.startTime}" />	
					 						</td>
					
															 <td class="td_right">endTime</td>
					 					 <td class=""><input id="endTime" name="endTime"  type="text" class="input-text lh30" 
					 						 		value="${model.endTime}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">info</td>
					 					 <td class=""><input id="info" name="info"  type="text" class="input-text lh30" 
					 						 		value="${model.info}" />	
					 						</td>
					
																		</tr>
					                 <tr>
	                   <td class="td_right">&nbsp;</td>
	                   <td class="">
	                     <input type="submit" name="button" class="btn" id="modle_save" value="保存"> 
	                    <input type="reset" name="button" class="btn" value="重置"> 
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