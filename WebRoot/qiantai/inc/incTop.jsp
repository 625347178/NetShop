<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <script type="text/javascript">
	        function myXinxi()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	            </s:else>
	        }
	        function myCart()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myCart.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function myOrder()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var s="<%=path %>/myOrder.action";
	                 window.location.href=s;
	            </s:else>
	        }
	        
	        function liuyanAll()
	        {
	            <s:if test="#session.user==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var url="<%=path %>/liuyanAll.action";
	                 window.location.href=url;
	            </s:else>
	        }
      </script>
<div class="topp">
<div class="top">
 
		<div class="sc">  
		 	<span style="font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt">
         网上购物在线商城系统 </span>
		</div>
<div style="clear:both;"></div>
<div class="menu"> 
      	<li> <A href="<%=path %>/qiantai/default.jsp">首页</A> </li>
      	
      	<li> <A href="<%=path %>/qiantai/search/search.jsp">商品查询</A> </li>
		
      	<li> <A href="#" onclick="myXinxi()">我的信息</A> </li>
		
      	<li> <A href="#" onclick="myCart()">我的购物车</A> </li>
		
      	<li> <A href="#" onclick="myOrder()">我的订单</A> </li>
		
      	<li><A href="#" onclick="liuyanAll()">在线留言</A></li>
</div>
 
</div>
</div>