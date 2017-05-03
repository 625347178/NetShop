<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
 

<div class="right5">
<h1><span>当前位置：在线留言</span></h1>
 
<div class='nr'>
	       <form method="post" action="guestbook.php" name="form1">
        <input type='hidden' name='action' value='save' />	
<table width="640" border="0" cellspacing="0" cellpadding="0" class="applyTb">
  <tr>
    <td width="120" height="30" align="center">联系人：</td>
    <td height="30"><input name="uname"  type="text" class="txt"  maxlength="200" value="" /> <font class="Red">*</font></td>
  </tr>
  <tr>
    <td width="120" height="30" align="center">联系电话：</td>
    <td height="30"><input name="homepage" type="text" class="txt"  maxlength="20" value="" /> <font class="Red">*</font></td>
  </tr>
  <tr>
    <td width="120" height="30" align="center">QQ：</td>
    <td height="30"><input  name="qq" type="text" class="txt" maxlength="200" /></td>
  </tr>
  <tr>
    <td width="120" height="30" align="center">邮箱：</td>
    <td height="30"><input name="email" type="text" class="txt" maxlength="50" /></td>
  </tr>
  <tr>
    <td width="120" height="30" align="center">地址：</td>
    <td height="30"><input name="title" type="text" class="txt" maxlength="50" /> <font class="Red">*</font></td>
  </tr>
 
  <tr>
    <td width="120" height="30" align="center">内容：</td>
    <td height="30"><textarea name="msg" cols="50" rows="10" class="txt" ></textarea></td>
  </tr>
  <tr>
    <td width="120" height="30" align="center">验证码</td>
    <td height="30"><input name="validate" type="text" class="txt" id="vdcode2" maxlength="5" /> <img src='../include/vdimgck.php' style="vertical-align:middle;"/></td>
  </tr>
  <tr>
    <td width="120" height="30">&nbsp;</td>
      <td height="30"><input type="submit" name="Submit"  value="提 交" class="btn" /> &nbsp;&nbsp;&nbsp;<input type="reset" name="Submit2" value="取 消" class="btn" /></td>
  </tr>
</table>
</form>
					
  </div>
 
</div>
</div>
 
<div style="clear:both;"></div>
 </div>
 
 
 
   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
   

</body>
</html>
 

