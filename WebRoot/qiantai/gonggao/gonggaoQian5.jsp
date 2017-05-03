<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
  
<div class="leftk">
<h1><span>网站公告</span></h1>
 
 <s:iterator value="#request.gonggaoList" id="gonggao">
 
<dl><dd> <a href="<%=path %>/gonggaoDetailQian.action?gonggaoId=<s:property value="#gonggao.gonggaoId"/>" title=""> <s:property value="#gonggao.gonggaoTitle"/></a> </dd> 
</dl>  
</s:iterator>
  
</div> 

