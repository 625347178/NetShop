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
<title> ���Ϲ��������̳�ϵͳ</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="<%=path %>/img/style.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
</head>
  <script type="text/javascript">
        function reg()
        {
                var url="<%=path %>/qiantai/userinfo/userReg.jsp";
                var n="";
                var w="480px";
                var h="500px";
                var s="resizable:no;help:no;status:no;scroll:yes";
			    openWin(url,n,w,h,s);
        }
        function login()
        {
           if(document.userLogin.userName.value=="")
           {
               alert("�������û���");
               return;
           }
           if(document.userLogin.userPw.value=="")
           {
               alert("����������");
               return;
           }
           document.userLogin.submit();
        }
        function logout()
        {
        	window.location.href="<%=path %>/userLogout.action";
        }
         
</script>
<body>

	<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">


		<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>

<div class="right">
<jsp:include flush="true" page="/qiantai/inc/ad.jsp"></jsp:include>
 
<div class="rightl">
<h1><span>��Ʒ�ϼ�</span> </h1>

<s:iterator value="#request.goodsNoTejiaList" id="goods">
<div> 
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
	 <img class="pic"  src="<%=path %>/<s:property value="#goods.goodsPic"/>" border="0" /></a>
<p>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"><s:property value="#goods.goodsName"/></a></br>
 �� �� �ۣ���<s:property value="#goods.goodsShichangjia"/>Ԫ<br/>
</p>
</div>
</s:iterator>
 
 
</div>
 
<div class="rightl mrg">
<h1><span>�ؼ���Ʒ</span> </h1>

 <s:iterator value="#request.goodsYesTejiaList" id="goods">
<div>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
  <img class="pic" src="<%=path %>/<s:property value="#goods.goodsPic"/>"  border="0"/>
</a> 
<p>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"><s:property value="#goods.goodsName"/></a></br>
�г���:<s:property value="#goods.goodsShichangjia"/> (�ؼ�:<s:property value="#goods.goodsTejia"/>) <br/>
</p>
</div>
</s:iterator>
</div>
 
<div class="rightl mrg mrb">
<h1><span>������Ʒ</span> </h1>

<s:iterator value="#request.goodsList" id="goods"> 
<div>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
<img class="pic" src="<%=path %>/<s:property value="#goods.goodsPic"/>" border="0" /></a>
																    
<p> 
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"> <s:property value="#goods.goodsName"/> </a></br>
 �� �� �ۣ�����<s:property value="#goods.goodsShichangjia"/><br/>
</p>
</div>
</s:iterator>

 
</div>
</div>
<div style="clear:both;"></div>
</div>


   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
   

</body>
</html>
 

