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
<title>信用卡积分兑换系统</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path %>/img/style.css" rel="stylesheet" type="text/css" />
<script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>

	<script type="text/javascript">
      function logout()
      {
      	 window.location.href="<%=path%>/userLogout.action";
      }
      function reg()
      {
         var url="<%=path %>/qiantai/userinfo/userReg.jsp";
         var n="";
         var w="480px";
         var h="500px";
         var s="resizable:no;help:no;status:no;scroll:yes";
	     openWin(url,n,w,h,s);
      }   
    </script>

</head>
  
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">

<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
  
 
 
<div class="right"> 
<div class="rightl">
<h1><span>商品查询</span></h1>
 
 <form action="<%=path %>/search.action" name="form1" method="post">
 
   <table id="Table7" border="0" cellpadding="0" cellspacing="0" height="100%" style="width: 100%">
                    <tr>
                        <td background="qtimages/hsglanse_05_02.gif" height="100%" rowspan="1" width="8">
                            &nbsp;</td>
                        <td align="center" style="width: 697px" valign="top">
                            <table align="center" border="1" bordercolordark="#9cc7ef" cellpadding="4" cellspacing="0"
                                width="100%">
                                 
                                <tr style="color: #000000; font-family: 宋体">
                                    <td nowrap="nowrap" style="width: 164px" width="30">
                                        <font face="宋体">商品名称:</font></td>
                                    <td width="79%">
                                        <input name="goodsName" type="text" id="goodsName" style="width:395px;" />*<span id="RequiredFieldValidatorzhuti" style="color:Red;visibility:hidden;">必填</span></td>
                                </tr>
                                   <tr style="color: #000000; font-family: 宋体">
                                    <td nowrap="nowrap" style="width: 164px" width="30">
                                        <font face="宋体">价格区间:</font></td>
                                    <td width="79%">
                                        <input name="bprice" type="text" id="bprice" style="width:175px;" />
                                        ---
                                         <input name="eprice" type="text" id="eprice" style="width:175px;" />
                                        </td>
                                </tr>
                                <tr>
                                    <td height="25"  colspan="2">
                                        &nbsp;
                                        <input type="submit" name="Button1" value="查询" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;Button1&quot;, &quot;&quot;, true, &quot;&quot;, &quot;&quot;, false, false))" id="Button1" /><font
                                            face="宋体">&nbsp;</font>
                                        <input id="Reset1" type="reset" value="重置" /></td>
                                </tr>
                                <tr bgcolor="#f1f8f5">
                                    <td colspan="2">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
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
 

