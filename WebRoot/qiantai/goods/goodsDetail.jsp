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
	<script type="text/javascript">
	        function buy1(goodsKucun)
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            <s:else>
	            if(document.buy.quantity.value=="")
	            {
	                alert("请输入购买数量");
	                return false;
	            }
	            if(document.buy.quantity.value>goodsKucun)
	            {
	                alert("库存不足");
	                return false;
	            }
	            
	            document.buy.submit();
	            </s:else>
	        }
	    </script>
	    
<body>

<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
<div id="page">
<div class="main">
<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
 
<div class="right">

<jsp:include flush="true" page="/qiantai/inc/ad.jsp"></jsp:include>
 

<div class="right"> 
 
<div class="rightl">
<h1><span>商品详细</span></h1>
 
 <form action="<%=path %>/addToCart.action" method="post" name="buy"> 
	 <table align="center" border="1" bordercolordark="#9cc7ef" bordercolorlight="#145aa0"
                    cellpadding="4" cellspacing="0" style="height: 443px" width="95%">
                    <tr>
                        <td width="11%">    商品名：</td>
                        <td width="39%">
                            <s:property value="#request.goods.goodsName"/>
                        </td>
                         
                        <td width="11%"> 库存：</td>
                        <td width="39%">
                           <s:property value="#request.goods.goodsKucun"/>
                        </td>
                    </tr>
                    <tr> 
                        <td width="11%">   价格：</td>
                        <td colspan="3">
                            <s:property value="#request.goods.goodsTejia"/>
                        </td> 
                    </tr>
                    
                     <tr> 
                        <td width="11%"> 简介：</td>
                        <td colspan="3">
                            <s:property value="#request.goods.goodsMiaoshu" escape="false"/>
                        </td> 
                    </tr>
                    
                    <tr>
                        <td   colspan="4" align="center">
                            <img class="pic" src="<%=path %>/<s:property value="#request.goods.goodsPic"/>"  style="width: 404px; height: 271px"   border="0"/>  </td>
                    </tr>
                      
                    <tr>
                        <td align="center" colspan="4" height="25" nowrap="nowrap">
                            &nbsp;<font face="宋体"> 
                            <a href="javascript:history.back();"><span style="color: #0000ff;text-decoration: underline">返回</span></a>&nbsp;</font> 
				                                购买数量：<input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
				                        <input type="hidden" name="goodsId" value="<s:property value="#request.goods.goodsId"/>"/>
				                        <img onclick="buy1(<s:property value="#request.goods.goodsKucun"/>)" src="<%=path %>/images/icon_buy.gif"/>
                     	</td>
                    </tr>
                    
                     <tr>
                        <td colspan="4"> </td>
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
 

