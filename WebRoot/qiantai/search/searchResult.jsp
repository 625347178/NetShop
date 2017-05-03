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
<title>信用卡积分兑换系统</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path %>/img/style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>

</head>
  
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">

<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
  
 

<div class="right"> 
<div class="rightl">
<h1><span>商品查询结果</span></h1>
  
  <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                 
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                         
                        <table cellspacing="0" cellpadding="2" rules="all" border="1" id="DataGrid1" style="border-color:Black;font-family:verdana;font-size:8pt;width:100%;border-collapse:collapse;">
	<tr align="center" valign="middle" style="background-color:#F8FAFC;font-weight:bold;">
		<td style="width:150px;">商品名称</td>  <td>积分</td><td>库存</td><td  >详细</td>
	</tr>
		  <s:iterator value="#request.goodsList" id="goods">
	  
			<tr align="center" style="font-weight:normal;font-style:normal;text-decoration:none;">
		 		<td> 	<s:property value="#goods.goodsName"/> </td>
		 		<td> &nbsp;  <s:property value="#goods.goodsShichangjia"/> </td>
		 		<td>  &nbsp;  <s:property value="#goods.goodsKucun"/>  </td>
		 		<td>
                    <a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">查看详细</a>&nbsp;&nbsp; 
                  </td>
            </tr>
		</s:iterator>    
								 
								  
</table></td>
                </tr>
             
                 
			                       
            </tbody>
        </table>
    
 
</div>
 
</div>
<div style="clear:both;"></div>
</div>



   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
   

</body>
</html>
 

