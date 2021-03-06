<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@include file="/common/common.jsp"%>

 <!-- content start -->
  <div class="admin-content">
 	<div class="up-cf up-padding">
      <div class="up-fl up-cf"><strong class="up-text-primary up-text-lg">TOld</strong> / <small>TOld</small></div>
    </div>
    
    <div class="up-g">
      <div class="up-u-md-6 up-cf">
        <div class="up-fl up-cf">
          <div class="up-btn-toolbar up-fl">
            <div class="up-btn-group up-btn-group-xs">
              <button type="button" id="list_add"  class="up-btn up-btn-default"><span class="up-icon-plus"></span> 新增</button>
              <button type="button"  class="up-btn up-btn-default"><span class="up-icon-save"></span> 保存</button>
              <button type="button" id="list_modify" class="up-btn up-btn-default"><span class="up-icon-archive"></span> 修改</button>
              <button type="button" id="list_delete" class="up-btn up-btn-default"><span class="up-icon-trash-o"></span> 删除</button>
            </div>
   
          </div>
        </div>
      </div>
      <div class="up-u-md-3 up-cf">
        <div class="up-fr">
          <div class="up-input-group up-input-group-sm">
            <input name="nameSerach" type="text" class="input-medium search-query" value="${name}">
            <button id="list_search" type="button" class="btn" onclick="listSearch()">搜索</button><!-- 以name为搜索条件的例子 --> 
          </div>
        </div>
      </div>
    </div>
    
    
    
    <div class="up-g">
      <div class="up-u-sm-12">
        <form class="up-form" method="post" name="list_form">
          <!-- <table class="up-table up-table-striped up-table-hover table-main"> -->
          <table class="table">
            <thead>
            <input type="hidden" id="name" name="name" value="" /><!-- 提交到后台的搜索条件，放name查询条件作为例子 -->
            <tr>
        				<th class="table-check"><input type="checkbox" onclick="checkAll(this)"/></th>
           														<th >username</th>
														<th >password</th>
														<th >phone</th>
														<th >name</th>
														<th >age</th>
														<th >physical</th>
														<th >sex</th>
														<th >余额</th>
														<th >紧急联系人（子女联系人）</th>
							            </tr>
          </thead>
          <tbody>
          <c:forEach items="${list}" var="rowdata" varStatus="status">
            <tr >
                            <td><input type="checkbox" name="ids" value="${rowdata.oldId}" /></td>
              													<td title="${rowdata.username}" > <a href="${basePath}${path}view/${rowdata.oldId}" class="name">${rowdata.username}</a></td>
                									
																			<td >${rowdata.password}</td>
													
																			<td >${rowdata.phone}</td>
													
																			<td >${rowdata.name}</td>
													
																			<td >${rowdata.age}</td>
													
																			<td >${rowdata.physical}</td>
													
																			<td >${rowdata.sex}</td>
													
																			<td >${rowdata.remainder}</td>
													
																			<td >${rowdata.urgent}</td>
													
					          </tr>
	        </c:forEach>
          </tbody>
        </table>
<%@include file="/common/common-page-new.jsp"%>
          <hr />
          <p>注：.....</p>
        </form>
      </div>

    </div>
    
<!-- content end -->
</div>
<script type="text/javascript">
	//以name为模糊匹配的搜索例子
	//对应MyBatis xml是s_name like concat(
	$(function(){
	 	$("#list_search").click(function (){
	 		$("#list_pageNum").val("1");
	 		$("#name").val($("input[name='nameSerach']").val());
	 		$('form[name=list_form]').attr('action','list').submit();
	 	});
	});
</script>
