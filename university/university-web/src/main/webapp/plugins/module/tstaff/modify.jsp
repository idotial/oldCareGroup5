<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <%@include file="/common/common.jsp"%>
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
                            <span></span>

                            <a href="javascript:void(0);" class="tmpl_panel_close"><span class="up-icon up-icon-remove" aria-hidden="true"></span></a>
                            <a href="javascript:void(0);" class="fullscreen_btn"><span class="up-icon up-icon-resize-full" aria-hidden="true"></span></a>
                            <a href="#tmpl_panel_con3" class="collapse_btn" data-toggle="collapse"><span class="up-icon up-icon-chevron-down" aria-hidden="true"></span></a>
                        </div>
                        <div class="up-panel-body up-collapse up-in" id="tmpl_panel_con3">
                              <form action="${basePath}${path}${action}" method="post" class="jqtransform" name="form_item">
					              <c:if test="${!empty model}">
					              	              <input type="hidden" id="staffId" name="staffId" value="${model.staffId}"/>
					              </c:if>
					              
					              <c:if test="${!empty page}">
					              <input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum}"/>
					              </c:if>
                                <div class="up-form-group  form-text">
                                   
                                    <label for="select1" class="up-col-sm-3 up-control-label">staffName</label>
                                    <div class="up-col-sm-4">
                                       <input id="staffName" name="staffName"
										type="text" class="input-text lh30" value="${model.staffName}" />
                                    </div>
                                </div>
                        		<div class="up-form-group  form-text">
                        			<label  class="up-col-sm-3 up-control-label">phone</label>
                        			<div class="up-col-sm-2">
                        				<input id="phone" name="phone"
										type="text" class="input-text lh30" value="${model.phone}" />
                    				</div>

                        		</div>
								<div class="up-form-group  form-text">
                                   
                                    <label for="select1" class="up-col-sm-3 up-control-label">idCard</label>
                                    <div class="up-col-sm-4">
                                       <input id="idCard" name="idCard"
										type="text" class="input-text lh30" value="${model.idCard}" />
                                    </div>
                                </div>
                        		<div class="up-form-group  form-text">
                        			<label  class="up-col-sm-3 up-control-label">job</label>
                        			<div class="up-col-sm-2">
                        				<input id="job" name="job"
										type="text" class="input-text lh30" value="${model.job}" />
                    				</div>

                        		</div>
                        		<div class="up-form-group  form-text">
                                   
                                    <label for="select1" class="up-col-sm-3 up-control-label">upData</label>
                                    <div class="up-col-sm-4">
                                       <input id="upData" name="upData"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.upData}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}" readonly />
                                    </div>
                                </div>
                                
                                <div class="up-form-group  form-text">
                        			<label  class="up-col-sm-3 up-control-label">offData</label>
                        			<div class="up-col-sm-2">
                        				<input id="offData" name="offData"  type="text" class="input-text lh30" 
					 						 		value="<fmt:formatDate value="${model.offData}" type="both" pattern="yyyy-MM-dd"/>" data-up-datepicker="{format: 'yyyy-mm-dd'}" readonly />
                    				</div>

                        		</div>
                                <div class="up-form-group  form-text">
                                   
                                    <label for="select1" class="up-col-sm-3 up-control-label">salary</label>
                                    <div class="up-col-sm-4">
                                       <input id="salary" name="salary"
										type="text" class="input-text lh30" value="${model.salary}" />
                                    </div>
                                </div>
                        		<div class="up-form-group  form-text">
                        			<label  class="up-col-sm-3 up-control-label">是否在职</label>
                        			<div class="up-col-sm-2">
                        				<input id="state" name="state"
										type="text" class="input-text lh30" value="${model.state}" />
                    				</div>

                        		</div>

                        		<div class="up-form-group">
                        			<div class="up-col-sm-10 up-text-center">
                        				<input type="submit" name="button"
										class="up-btn up-btn-primary" id="modle_save" value="保存"> 
										<input type="reset" name="button" class="up-btn up-btn-danger up-col-xs-offset-1 up-col-sm-offset-1 up-col-md-offset-1s" value="重置">
                        			</div>

                        		</div>
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
