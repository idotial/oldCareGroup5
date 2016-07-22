<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TStaff</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TStaff</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="staffId" name="staffId" value="${model.staffId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">staffName</td>
					 					 <td class=""><input id="staffName" name="staffName"  type="text" class="input-text lh30" 
					 						 		value="${model.staffName}" />	
					 						</td>
					
															 <td class="td_right">phone</td>
					 					 <td class=""><input id="phone" name="phone"  type="text" class="input-text lh30" 
					 						 		value="${model.phone}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">idCard</td>
					 					 <td class=""><input id="idCard" name="idCard"  type="text" class="input-text lh30" 
					 						 		value="${model.idCard}" />	
					 						</td>
					
															 <td class="td_right">job</td>
					 					 <td class=""><input id="job" name="job"  type="text" class="input-text lh30" 
					 						 		value="${model.job}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">upData</td>
					 					 <td class=""><input id="upData" name="upData"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.upData}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}" readonly />
					 						</td>
					
															 <td class="td_right">offData</td>
					 					 <td class=""><input id="offData" name="offData"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.offData}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}" readonly />
					 						</td>
					
									</tr>
															 <td class="td_right">salary</td>
					 					 <td class=""><input id="salary" name="salary"  type="text" class="input-text lh30" 
					 						 		value="${model.salary}" />	
					 						</td>
					
															 <td class="td_right">是否在职</td>
					 					 <td class=""><input id="state" name="state"  type="text" class="input-text lh30" 
					 						 		value="${model.state}" />	
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