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
	              <form action="${basePath}${path}modify" method="post" class="jqtransform">
	              	              <input type="hidden" id="oldId" name="oldId" value="${model.oldId}"/>
	              <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}"/>
	               <table class="form_table"  width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															<td class="form_label">username:</td>	
										<td class="form_value">
													${model.username}
											</td>
															<td class="form_label">password:</td>	
										<td class="form_value2">
													${model.password}
											</td>
				</tr>
															<td class="form_label">phone:</td>	
										<td class="form_value">
													${model.phone}
											</td>
															<td class="form_label">name:</td>	
										<td class="form_value2">
													${model.name}
											</td>
				</tr>
															<td class="form_label">age:</td>	
										<td class="form_value">
													${model.age}
											</td>
															<td class="form_label">physical:</td>	
										<td class="form_value2">
													${model.physical}
											</td>
				</tr>
															<td class="form_label">sex:</td>	
										<td class="form_value">
													${model.sex}
											</td>
															<td class="form_label">余额:</td>	
										<td class="form_value2">
													${model.remainder}
											</td>
				</tr>
															<td class="form_label">紧急联系人（子女联系人）:</td>	
										<td class="form_value">
													${model.urgent}
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