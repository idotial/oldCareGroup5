<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TTerm</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TTerm</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="termId" name="termId" value="${model.termId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">termName</td>
					 					 <td class=""><input id="termName" name="termName"  type="text" class="input-text lh30" 
					 						 		value="${model.termName}" />	
					 						</td>
					
															 <td class="td_right">startData</td>
					 					 <td class=""><input id="startData" name="startData"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.startData}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}"/>
					 						</td>
					
									</tr>
															 <td class="td_right">endData</td>
					 					 <td class=""><input id="endData" name="endData"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.endData}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}"/>
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