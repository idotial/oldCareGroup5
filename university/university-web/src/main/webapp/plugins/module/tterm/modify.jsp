<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <title>居家养老管理平台</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="${basePath}/resources/css/uplan.min.css">
    <link href="${basePath}/resources/css/style.css" rel="stylesheet">
</head>

<body>
<div id="wrap">
 <!-- 头部  侧栏-->
 
    <%@include file="/plugins/main.jspf" %>
    <!-- 内容start -->
	   <main class="main up-container-fluid">
            <div class="up-row tmpl_mar20">
                <div class="up-col-xs-12 up-col-sm-12 up-col-md-12">
                    <div class="up-row up-panel tmpl_panel tmpl_margin">
                        <div class="up-panel-heading">
                            <span>添加管理员信息</span>

                            <a href="javascript:void(0);" class="tmpl_panel_close"><span class="up-icon up-icon-remove" aria-hidden="true"></span></a>
                            <a href="javascript:void(0);" class="fullscreen_btn"><span class="up-icon up-icon-resize-full" aria-hidden="true"></span></a>
                            <a href="#tmpl_panel_con3" class="collapse_btn" data-toggle="collapse"><span class="up-icon up-icon-chevron-down" aria-hidden="true"></span></a>
                        </div>
                        <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con3">
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
        </main>
   
    <!-- 	内容end -->
</div>
</body>
<script src="${basePath}/resources/js/jquery.min.js"></script>
<script src="${basePath}/resources/js/uplan.min.js"></script>
<script src="${basePath}/resources/js/common.js"></script>
</html>