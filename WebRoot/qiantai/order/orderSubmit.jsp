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
  
  <center> 
   	<form action="<%=path %>/orderSubmit.action" name="f" method="post">
  		<table cellSpacing="0" borderColorDark="#9cc7ef" cellPadding="4" width="100%" align="center" border="1" align="center">

			<tr>
				<td   style='WIDTH: 50%'><FONT face='宋体'> 恭喜您，订单提交成功！ </FONT></td>
				 
			</tr>
			<tr>
				<td   style='WIDTH: 50%'><FONT face='宋体'>订单编号：<s:property value="#request.order.orderBianhao"/></FONT></td>
			 
			</tr>  
			<tr>
				<td   style='WIDTH: 50%'><FONT face='宋体'>总金额：<s:property value="#request.order.orderJine"/></FONT></td>
			 
			</tr>
			  
			 <tr><td   style='WIDTH: 50%'><FONT face='宋体'>下单日期:<s:property value="#request.order.orderDate"/></FONT></td> 
			</td>
			</tr>
			
			 <tr><td   style='WIDTH: 50%'>送货地址:<s:property value="#request.order.odderSonghuodizhi"/></td> 
			</td>
			</tr>
			
			 <tr><td   style='WIDTH: 50%'><FONT face='宋体'>付款方式:<s:property value="#request.order.odderFukuangfangshi"/></FONT></td>
			 </tr>
			 
			 
				<tr bgColor="#f1f8f5">
					<td colSpan="1">&nbsp;</td>
				</tr>
		</table>
  </form>
  </center>
</div>
 
</div>
<div style="clear:both;"></div>
</div>



   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
   

</body>
</html>
 

