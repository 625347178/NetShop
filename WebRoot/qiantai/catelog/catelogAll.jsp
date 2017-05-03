<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
 
<TABLE cellSpacing=0 cellPadding=0 width="90%" border="0" style="text-align:left;">
	<s:iterator value="#request.cateLogList" id="catelog">
	<TR>	
	    <TD language="javascript" style="cursor:pointer" width="34" height="29" align="center">
	 	</TD>
		<TD width="662"  class='fl'> <a href="<%=path %>/goodsByCatelog.action?catelogId=<s:property value="#catelog.catelogId"/>"><s:property value="#catelog.catelogName"/></a></TD>
	</TR> 
	</s:iterator>
 
</TABLE> 