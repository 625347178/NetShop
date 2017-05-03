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
<title> 网上购物在线商城系统</title>
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
               alert("请输入用户名");
               return;
           }
           if(document.userLogin.userPw.value=="")
           {
               alert("请输入密码");
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
<h1><span>新品上架</span> </h1>

<s:iterator value="#request.goodsNoTejiaList" id="goods">
<div> 
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
	 <img class="pic"  src="<%=path %>/<s:property value="#goods.goodsPic"/>" border="0" /></a>
<p>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"><s:property value="#goods.goodsName"/></a></br>
 零 售 价：￥<s:property value="#goods.goodsShichangjia"/>元<br/>
</p>
</div>
</s:iterator>
 
 
</div>
 
<div class="rightl mrg">
<h1><span>特价商品</span> </h1>

 <s:iterator value="#request.goodsYesTejiaList" id="goods">
<div>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
  <img class="pic" src="<%=path %>/<s:property value="#goods.goodsPic"/>"  border="0"/>
</a> 
<p>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"><s:property value="#goods.goodsName"/></a></br>
市场价:<s:property value="#goods.goodsShichangjia"/> (特价:<s:property value="#goods.goodsTejia"/>) <br/>
</p>
</div>
</s:iterator>
</div>
 
<div class="rightl mrg mrb">
<h1><span>热销商品</span> </h1>

<s:iterator value="#request.goodsList" id="goods"> 
<div>
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>">
<img class="pic" src="<%=path %>/<s:property value="#goods.goodsPic"/>" border="0" /></a>
																    
<p> 
<a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"> <s:property value="#goods.goodsName"/> </a></br>
 团 购 价：￥：<s:property value="#goods.goodsShichangjia"/><br/>
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
 

