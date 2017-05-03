<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
<%@ page isELIgnored="false" %> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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

</head>
  
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">

<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
  
 

<div class="right"> 
<div class="rightl">
<h1><span>在线留言</span></h1>
  
  <table id="search" align="center" border="1" bordercolor="#cccccc" cellpadding="0"
            cellspacing="1" class="table_1" width="98%">
            <tbody>
                 
                <tr class="tr1">
                    <td style="padding-left: 5px; height: 25px">
                         
                        <table cellspacing="0" cellpadding="2" rules="all" border="1" id="DataGrid1" style="border-color:Black;font-family:verdana;font-size:8pt;width:100%;border-collapse:collapse;">
	<tr align="center" valign="middle" style="background-color:#F8FAFC;font-weight:bold;">
		<td style="width:150px;">留言人</td>  <td>留言时间</td><td>标题</td><td  >内容</td>
	</tr>
			<s:iterator value="#request.liuyanList" id="liuyan">
	  
			<tr align="center" style="font-weight:normal;font-style:normal;text-decoration:none;">
		 		<td> 	<s:property value="#liuyan.liuyanUser"/> </td>
		 		<td> &nbsp;  <s:property value="#liuyan.liuyanDate"/> </td>
		 		<td>  &nbsp;  <s:property value="#liuyan.liuyanTitle"/>  </td>
		 		<td>
                   <s:property value="#liuyan.liuyanContent" escape="false"/>
                  </td>
            </tr>
		</s:iterator>    
								 
								  
</table></td>
                </tr>
             
                 
			                       
            </tbody>
        </table>
    
   	<form action="<%=path %>/liuyanAdd.action" method="post">
 
   <table id="Table7" border="0" cellpadding="0" cellspacing="0" height="100%" style="width: 100%">
        <tr>
            <td background="qtimages/hsglanse_05_02.gif" height="100%" rowspan="1" width="8">
                &nbsp;</td>
            <td align="center" style="width: 697px" valign="top">
                <table align="center" border="1" bordercolordark="#9cc7ef" cellpadding="4" cellspacing="0"
                    width="100%">
                     
                    <tr style="color: #000000; font-family: 宋体">
                        <td nowrap="nowrap" style="width: 164px" width="30">
                            <font face="宋体">标题:</font></td>
                        <td width="79%">
                            <input name="liuyanTitle" type="text" id="liuyanTitle" style="width:395px;" />*<span id="RequiredFieldValidatorzhuti" style="color:Red;visibility:hidden;">必填</span></td>
                    </tr>
                       <tr style="color: #000000; font-family: 宋体">
                        <td nowrap="nowrap" style="width: 164px" width="30">
                            <font face="宋体">内容:</font></td>
                        <td width="98%">
                      <FCK:editor instanceName="liuyanContent"  basePath="/fckeditor" width="800px" height="200" value="请输入内容" toolbarSet="Basic">
                      </FCK:editor>  
						</td>
                    </tr>
                    <tr>
                         
                        <td height="25"  colspan="2">
                            &nbsp; <input type="submit" name="" value="提交留言" />
                        </td>
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
 

