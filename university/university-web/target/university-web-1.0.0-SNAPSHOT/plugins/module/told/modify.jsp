<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TOld</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TOld</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="oldId" name="oldId" value="${model.oldId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">username</td>
					 					 <td class=""><input id="username" name="username"  type="text" class="input-text lh30" 
					 						 		value="${model.username}" />	
					 						</td>
					
															 <td class="td_right">password</td>
					 					 <td class=""><input id="password" name="password"  type="text" class="input-text lh30" 
					 						 		value="${model.password}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">phone</td>
					 					 <td class=""><input id="phone" name="phone"  type="text" class="input-text lh30" 
					 						 		value="${model.phone}" />	
					 						</td>
					
															 <td class="td_right">name</td>
					 					 <td class=""><input id="name" name="name"  type="text" class="input-text lh30" 
					 						 		value="${model.name}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">birth</td>
					 					 <td class=""><input id="birth" name="birth"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.birth}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}" readonly />
					 						</td>
					
															 <td class="td_right">physical</td>
					 					 <td class=""><input id="physical" name="physical"  type="text" class="input-text lh30" 
					 						 		value="${model.physical}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">sex</td>
					 					 <td class=""><input id="sex" name="sex"  type="text" class="input-text lh30" 
					 						 		value="${model.sex}" />	
					 						</td>
					
															 <td class="td_right">余额</td>
					 					 <td class=""><input id="remainder" name="remainder"  type="text" class="input-text lh30" 
					 						 		value="${model.remainder}" />	
					 						</td>
					
									</tr>
															 <td class="td_right">紧急联系人（子女联系人）</td>
					 					 <td class=""><input id="urgent" name="urgent"  type="text" class="input-text lh30" 
					 						 		value="${model.urgent}" />	
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