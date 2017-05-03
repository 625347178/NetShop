<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物商城</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path %>/img/style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
<script type="text/javascript">
            function back1()
	        {
	           window.history.go(-1);
	        }
        </script>
</head>
  
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">

<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
 
<div class="right">
<jsp:include flush="true" page="/qiantai/inc/ad.jsp"></jsp:include>
 
 
<div class="right"> 
<div class="rightl">
<h1><span>订单确认</span></h1>
  
   	<form action="<%=path %>/orderSubmit.action" name="f" method="post">
  		<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center" border="1">

			<tr>
				<td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>收货人帐号:</FONT></td>
				<td width='79%'> <input type="text" readonly="readonly" value="<s:property value="#session.user.userName"/>"/> </td>
			</tr>
			<tr>
				<td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>收货人姓名:</FONT></td>
				<td width='79%'>  <input type="text" readonly="readonly" value="<s:property value="#session.user.userRealname"/>"/> </td>
			</tr>  
			<tr>
				<td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>收货人联系电话:</FONT></td>
				<td width='79%'>  <input type="text" readonly="readonly" value="<s:property value="#session.user.userTel"/>"/> </td>
			</tr>
			  
			 <tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>收货人地址:</FONT></td>
			<td width='79%'>    <input type="text" readonly="readonly" value="<s:property value="#session.user.userAddress"/>"/>
			</td>
			</tr>
			
			 <tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>送货地址:</FONT></td>
			<td width='79%'> <input type="text" name="odderSonghuodizhi"/>
			</td>
			</tr>
			
			 <tr><td noWrap width='30' style='WIDTH: 164px'><FONT face='宋体'>付款方式:</FONT></td>
			<td width='79%'>
			  <select name="odderFukuangfangshi" style="width:155px;">
		   		                               <option value="货到付款">货到付款</option>
		   		                               <option value="银行付款">银行付款</option>
		   		                          </select>
				</td></tr>
			 
				<tr>
				 
					<td width="59%" height="25" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					   <a href="#" onclick="back1()"><img border="0" src="<%=path %>/images/Car_icon_back.gif"/></a> 
				       <img border="0" src="<%=path %>/images/Car_icon_06.gif" onclick="javascript:document.f.submit();"/> 
					</td>
				</tr> 
				<tr bgColor="#f1f8f5">
					<td colSpan="2">&nbsp;</td>
				</tr>
		</table>
  </form>
</div>
 
</div>
<div style="clear:both;"></div>
</div>



   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
   

</body>
</html>
 

