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
	              <form action="${basePath}${path}modify" method="post" class="jqtransform">
	              	              <input type="hidden" id="staffId" name="staffId" value="${model.staffId}"/>
	              <input type="hidden" id="pageNum" name="pageNum" value="${pageNum}"/>
	               <table class="form_table"  width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>	
															<td class="form_label">staffName:</td>	
										<td class="form_value">
													${model.staffName}
											</td>
															<td class="form_label">phone:</td>	
										<td class="form_value2">
													${model.phone}
											</td>
				</tr>
															<td class="form_label">idCard:</td>	
										<td class="form_value">
													${model.idCard}
											</td>
															<td class="form_label">job:</td>	
										<td class="form_value2">
													${model.job}
											</td>
				</tr>
															<td class="form_label">upData:</td>	
										<td class="form_value">
													<fmt:formatDate value="${model.upData}" type="both" pattern="yyyy-MM-dd"/>
											</td>
															<td class="form_label">offData:</td>	
										<td class="form_value2">
													<fmt:formatDate value="${model.offData}" type="both" pattern="yyyy-MM-dd"/>
											</td>
				</tr>
															<td class="form_label">salary:</td>	
										<td class="form_value">
													${model.salary}
											</td>
															<td class="form_label">是否在职:</td>	
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