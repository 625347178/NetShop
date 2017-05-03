<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>购物商城</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path %>/img/style.css" rel="stylesheet" type="text/css" /> 
</head>
  
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
	<div id="page">
		<div class="main">
		<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
 
		<div class="right">
		<jsp:include flush="true" page="/qiantai/inc/ad.jsp"></jsp:include>
 


<div class="right3">
<h1><span>网站公告</span></h1>
<div>
  
<h2> <s:property value="#request.gonggao.gonggaoTitle"/> </h2>
<span id="kk2"> 发布时间： <s:property value="#request.gonggao.gonggaoData"/> </span><br/>
 
<p> &nbsp;&nbsp; <s:property value="#request.gonggao.gonggaoContent" escape="false"/>  </p>

<p>
	&nbsp;</p>
 
</div>
<div class="page"> </div>
</div>
</div>
<div style="clear:both;"></div>
 </div>
 

   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
   

</body>
</html>
 

