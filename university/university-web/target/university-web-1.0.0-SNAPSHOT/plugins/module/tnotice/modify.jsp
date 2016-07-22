<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
 <html lang="zh-CN">
	<head>
		<meta charset="UTF-8">
<%@include file="/common/common.jsp"%>
		<title>TNotice</title>
	 </head>
 <body>
		<div class="container">
	      
	     	<div id="forms" class="mt0">
	        <div class="box">
	          <div class="box_border">
	            <div class="box_top"><b class="pl15">TNotice</b></div>
	            <div class="box_center">
	              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
	              <c:if test="${!empty model}">
	              	              <input type="hidden" id="noticeId" name="noticeId" value="${model.noticeId}"/>
	              </c:if>
	              
	              <c:if test="${!empty page}">
	              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
	              </c:if>
	               <table class="form_table pt15 pb15" width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															 <td class="td_right">title</td>
					 					 <td class=""><input id="title" name="title"  type="text" class="input-text lh30" 
					 						 		value="${model.title}" />	
					 						</td>
					
															 <td class="td_right">content</td>
					 					 <td class=""><input id="content" name="content"  type="text" class="input-text lh30" 
					 						 		value="${model.content}" />	
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