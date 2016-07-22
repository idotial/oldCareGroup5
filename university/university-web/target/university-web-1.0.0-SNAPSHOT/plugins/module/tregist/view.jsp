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
	              <form action="${basePath}${path}modify" method="post" class="jqtransform">
	              	              <input type="hidden" id="registId" name="registId" value="${model.registId}"/>
	              <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}"/>
	               <table class="form_table"  width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															<td class="form_label">classId:</td>	
										<td class="form_value">
													${model.classId}
											</td>
															<td class="form_label">oldId:</td>	
										<td class="form_value2">
													${model.oldId}
											</td>
				</tr>
															<td class="form_label">registTime:</td>	
										<td class="form_value">
													<fmt:formatDate value="${model.registTime}" type="both" pattern="yyyy-MM-dd"/>
											</td>
															<td class="form_label">state:</td>	
										<td class="form_value2">
													${model.state}
											</td>
				</tr>
															<td class="form_label">pay:</td>	
										<td class="form_value">
													${model.pay}
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