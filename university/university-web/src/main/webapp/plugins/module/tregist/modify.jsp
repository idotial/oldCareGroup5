<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TRegist</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TRegist</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="registId" name="registId" value="${model.registId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">classId</td>
					 					 <td class=""><input id="classId" name="classId"  type="text" class="input-text lh30" 
					 						 		value="${model.classId}" />	
					 						</td>
					
															 <td class="td_right">oldId</td>
					 					 <td class=""><input id="oldId" name="oldId"  type="text" class="input-text lh30" 
					 						 		value="${model.oldId}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">registTime</td>
					 					 <td class=""><input id="registTime" name="registTime"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.registTime}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}" readonly />
					 						</td>
					
															 <td class="td_right">state</td>
					 					 <td class=""><input id="state" name="state"  type="text" class="input-text lh30" 
					 						 		value="${model.state}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">pay</td>
					 					 <td class=""><input id="pay" name="pay"  type="text" class="input-text lh30" 
					 						 		value="${model.pay}" />	
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